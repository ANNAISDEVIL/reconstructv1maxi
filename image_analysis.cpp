#include "hls_stream.h"
#include "image_analysis.hpp"
#include <cmath>
#include <ostream>
#include "iostream"

void getLocalImages_single(int curr_idx,int psfSupersample, int projShape0, int projShape1, atom_location* atomLocations, hls::stream<local_image_info>& localImages){
  atom_location coord = atomLocations[curr_idx];
  local_image_info info;

  int y_int = (int)std::round(coord.y);
  int x_int = (int)std::round(coord.x);
  info.X_int = x_int;
  info.Y_int = y_int;
  info.Y_min = y_int - projShape0 / 2;
  info.X_min = x_int - projShape1 / 2;
  info.Y_max = (info.Y_min + projShape0) - 1;
  info.X_max = (info.X_min + projShape1) - 1;
  info.dx = (int)(std::round((coord.x - x_int) * psfSupersample));
  info.dy = (int)(std::round((coord.y - y_int) * psfSupersample));
  std::cout << "#1 x_int " << x_int << " x_min " << info.X_min << " x_max "
            << info.X_max << " y_int " << y_int << " y_min " << info.Y_min
            << " y_max " << info.Y_max << std::endl;
  localImages.write(info);        
}

// void applyProjectors_hardened_boundary(int atomLocationsSize, int psfSupersample, 
//     int imageProjectionSize, 
//     IMAGE_DTYPE imageProjs_local[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE], 
//     IMAGE_DTYPE imageProjs[IMAGE_PROJECTION_SIZE],
//     int imageProjs_local_size[IMAGE_PROJECTION_SIZE],
//     IMAGE_DTYPE fullImage[FULL_IMAGE_SIZE],
//     int fullImage_rows, int fullImage_cols,
//     hls::stream<local_image_info>& localImages,  IMAGE_DTYPE* emissions, unsigned int& emission_cnt) {
//     unsigned int emission_ptr = 0;
//     for(int i = 0; i < atomLocationsSize; i++){
//         auto localImage = localImages.read();
//         int xidx = (localImage.dx + psfSupersample) % psfSupersample;
//         int yidx = (localImage.dy + psfSupersample) % psfSupersample;
//         unsigned int proj_offset = yidx * psfSupersample + xidx;


//         IMAGE_DTYPE projSumUsed = 0;
//         IMAGE_DTYPE sum = 0;
//         int cols = 31; 

     
//         for(int row = localImage.Y_min; row <= localImage.Y_min + 30; row++){
//             #pragma HLS PIPELINE
//             int p = (row - localImage.Y_min) * cols;

//             for(int col1 = 0; col1 <= 30; col1++){   
//                 #pragma HLS PIPELINE II=1
//                 int col = col1 + localImage.X_min;
//                 sum += fullImage[row* fullImage_cols + col] * imageProjs_local[IMAGE_PROJECTION_LOCAL * proj_offset + p];
//                 projSumUsed += imageProjs_local[IMAGE_PROJECTION_LOCAL * proj_offset + p];
//                 p++;
//             }
//         }

//         std::cout << "sum " << sum << " imageProjs " << imageProjs[proj_offset] << " projSumUsed " << projSumUsed << std::endl;  
//         emissions[i] = sum * (imageProjs[proj_offset] / projSumUsed);

//     }
//     emission_cnt = atomLocationsSize;
// }

void Image_extract(int curr_idx, hls::stream<local_image_info>& localImages, 
    IMAGE_DTYPE fullImage[FULL_IMAGE_SIZE], IMAGE_DTYPE curr_fullImage[31][31], 
    IMAGE_DTYPE imageProjs_local[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE], IMAGE_DTYPE curr_localImage[31][31],
    IMAGE_DTYPE imageProjs[IMAGE_PROJECTION_SIZE], IMAGE_DTYPE& curr_imageProjs) {
    #pragma HLS ARRAY_PARTITION variable=curr_fullImage dim=2 type=complete
    #pragma HLS ARRAY_PARTITION variable=curr_localImage dim=2 type=complete
    local_image_info curr_info = localImages.read();
    unsigned int xmin = curr_info.X_min;
    unsigned int ymin = curr_info.Y_min;
    int xidx = (curr_info.dx + 1) % 1;
    int yidx = (curr_info.dy + 1) % 1;
    std::cout << "  -- curr idx " << curr_idx << " xmin " << xmin << " ymin " << ymin << std::endl;
    unsigned int proj_offset = yidx * 1 + xidx;    
    for(unsigned char i = 0; i < 31; i++){  // row second
        #pragma HLS DEPENDENCE variable=imageProjs_local type=inter false 
        #pragma HLS DEPENDENCE variable=fullImage type=inter false    
        for(unsigned char j = 0; j < 31; j++){  // column first
            #pragma HLS UNROLL
            curr_localImage[i][j] = imageProjs_local[proj_offset * IMAGE_PROJECTION_LOCAL + i*31+j];
            curr_fullImage[i][j] = fullImage[xmin + j + (ymin+i) * PIXEL];   //768 256

            if(curr_idx <= 1 && i == 6)
                    std::cout << "  ---- proj_offset " << proj_offset << " idx " << i*31+j 
                        << " xmin " << xmin << " ymin " << ymin 
                        << " i " << (unsigned int)i << " j " << (unsigned int)j
                        << " imageProjs_local " << curr_localImage[i][j] 
                        << " fullImage " << curr_fullImage[i][j]
                        << std::endl;

        }
    }
    std::cout << "#2 idx " << curr_idx << " curr_localImage " << curr_localImage[0][0] << " curr_fullImage " << curr_fullImage[0][0] << std::endl;
    curr_imageProjs = imageProjs[proj_offset];
}


void conv_kernel(IMAGE_DTYPE curr_fullImage[31][31], IMAGE_DTYPE curr_localImage[31][31], IMAGE_DTYPE& projSumUsed, IMAGE_DTYPE& sum) { 
    // #pragma HLS ARRAY_PARTITION variable=curr_fullImage dim=0 type=complete
    // #pragma HLS ARRAY_PARTITION variable=curr_localImage dim=0 type=complete
    for(unsigned char i = 0; i < 31; i++){
        for(unsigned char j = 0; j < 31; j++){
            #pragma HLS UNROLL
            sum += curr_fullImage[i][j] * curr_localImage[i][j];
            projSumUsed += curr_localImage[i][j];
        }
    }
    std::cout << "#3 sum " << sum << " curr_localImage " << curr_localImage[0][0] << " projSumUsed " << projSumUsed << std::endl;
}


void vector_sum(IMAGE_DTYPE din[31], IMAGE_DTYPE& sum){
    IMAGE_DTYPE sum1[16];
    IMAGE_DTYPE sum2[8];
    IMAGE_DTYPE sum3[4];
    IMAGE_DTYPE sum4[2];

    for(unsigned char i=0; i < 15; i++){
        #pragma HLS UNROLL
        sum1[i] = din[2*i] + din[2*i+1];
    }
    sum1[15] = din[30];

    for(unsigned char i=0; i < 8; i++){
        #pragma HLS UNROLL
        sum2[i] = sum1[2*i] + sum1[2*i+1];
    }

    for(unsigned char i=0; i < 4; i++){
        #pragma HLS UNROLL
        sum3[i] = sum2[2*i] + sum2[2*i+1];
    }

    for(unsigned char i=0; i < 2; i++){
        #pragma HLS UNROLL
        sum4[i] = sum3[2*i] + sum3[2*i+1];
    }    

    sum = sum4[0] + sum4[1];
}

void vector_sum_prod(IMAGE_DTYPE vec_in[31], IMAGE_DTYPE vec_in1[31], IMAGE_DTYPE& sum, IMAGE_DTYPE& prod){
    IMAGE_DTYPE res[31]; 
    IMAGE_DTYPE res1[31];
    for(unsigned char j = 0; j < 31; j++){
        #pragma HLS UNROLL
        // #pragma HLS UNROLL factor=16
        res[j] = vec_in[j];
        res1[j] = vec_in[j] * vec_in1[j];
    }
    vector_sum(res, sum);
    vector_sum(res1, prod);
}

// void matrix_sum_prod(IMAGE_DTYPE mat[31][31], IMAGE_DTYPE mat1[31][31], IMAGE_DTYPE& sum, IMAGE_DTYPE& prod){
//     #pragma HLS ARRAY_PARTITION variable=mat dim=1 type=complete
//     #pragma HLS ARRAY_PARTITION variable=mat1 dim=1 type=complete
//     #pragma HLS PIPELINE
//     IMAGE_DTYPE result = 0;
//     IMAGE_DTYPE sum_val[31];
//     IMAGE_DTYPE prod_val[31];
//     for(unsigned i = 0; i < 31; i++){
//         #pragma HLS UNROLL
//         vector_sum_prod(mat[i], mat1[i], sum_val[i], prod_val[i]);
//     }
//     vector_sum(sum_val, sum);
//     vector_sum(prod_val, prod);
//     //sum = 0;
//     //prod = 0;
//     //for(unsigned i = 0; i < 31; i++){
//     //    #pragma HLS UNROLL
//     //    sum += sum_val[i];
//     //    prod += prod_val[i];
//     //}
// }

void matrix_sum_prod(IMAGE_DTYPE mat[31][31], IMAGE_DTYPE mat1[31][31], IMAGE_DTYPE& sum, IMAGE_DTYPE& prod){
    #pragma HLS ARRAY_PARTITION variable=mat dim=1 type=complete
    #pragma HLS ARRAY_PARTITION variable=mat1 dim=1 type=complete
    
    IMAGE_DTYPE sum_val[31];
    IMAGE_DTYPE prod_val[31];
    
    // Single loop with partial unroll - much cleaner!
    for(unsigned i = 0; i < 31; i++){
        #pragma HLS PIPELINE II=1
        #pragma HLS UNROLL factor=16          // Process 16 in parallel
        #pragma HLS LOOP_TRIPCOUNT max=31 min=31 avg=31  // Exactly 31 iterations
        vector_sum_prod(mat[i], mat1[i], sum_val[i], prod_val[i]);
    }
    
    vector_sum(sum_val, sum);
    vector_sum(prod_val, prod);
}

void post_process(IMAGE_DTYPE projSumUsed, IMAGE_DTYPE sum, IMAGE_DTYPE curr_imageProjs, IMAGE_DTYPE& dout){
    #pragma HLS PIPELINE II=1
    dout = sum * (curr_imageProjs / projSumUsed);
}

void reconstruct(int atomLocationsSize,int projShape0, int projShape1, atom_location atomLocations[1024],
    int psfSupersample, 
    int imageProjectionSize, 
    IMAGE_DTYPE imageProjs_local[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE], 
    IMAGE_DTYPE imageProjs[IMAGE_PROJECTION_SIZE],
    int imageProjs_local_size[IMAGE_PROJECTION_SIZE],
    IMAGE_DTYPE fullImage[FULL_IMAGE_SIZE],
    int fullImage_rows, int fullImage_cols,  IMAGE_DTYPE* emissions){


#pragma HLS INTERFACE port=return mode=s_axilite bundle=control

#pragma HLS INTERFACE port=atomLocationsSize mode=s_axilite bundle=scalar_data
#pragma HLS INTERFACE port=projShape0 mode=s_axilite bundle=scalar_data
#pragma HLS INTERFACE port=projShape1 mode=s_axilite bundle=scalar_data

#pragma HLS INTERFACE port=atomLocations mode=m_axi bundle=atomLocations depth=1024

#pragma HLS INTERFACE port=psfSupersample mode=s_axilite bundle=scalar_data
#pragma HLS INTERFACE port=imageProjectionSize mode=s_axilite bundle=scalar_data

#pragma HLS INTERFACE port=imageProjs_local mode=m_axi bundle=imageProjs_local
#pragma HLS INTERFACE port=imageProjs mode=m_axi bundle=imageProjs
#pragma HLS INTERFACE port=imageProjs_local_size mode=m_axi bundle=imageProjs_local_size

#pragma HLS INTERFACE port=fullImage mode=m_axi bundle=fullImage depth=FULL_IMAGE_SIZE num_read_outstanding=64 max_read_burst_length=64
#pragma HLS cache port=fullImage lines=64 depth=64 

#pragma HLS INTERFACE port=fullImage_rows mode=s_axilite bundle=scalar_data
#pragma HLS INTERFACE port=fullImage_cols mode=s_axilite bundle=scalar_data

#pragma HLS INTERFACE port=emissions mode=m_axi bundle=emissions depth=1024


    for(unsigned short idx = 0; idx < atomLocationsSize; idx++){
        #pragma HLS DATAFLOW
        // #pragma HLS PIPELINE II=4
        #pragma HLS LOOP_TRIPCOUNT max=1024 min=1024 avg=1024        
        hls::stream<local_image_info,4> localImages;
        IMAGE_DTYPE curr_fullImage[31][31];
        IMAGE_DTYPE curr_localImage[31][31];
        IMAGE_DTYPE curr_imageProjs;
        IMAGE_DTYPE curr_emissions;
        IMAGE_DTYPE projSumUsed = 0;
        IMAGE_DTYPE sum = 0;

        // #pragma HLS ARRAY_RESHAPE variable=curr_localImage dim=2 type=complete        
        // #pragma HLS ARRAY_RESHAPE variable=curr_fullImage dim=2 type=complete
        #pragma HLS ARRAY_PARTITION variable=curr_fullImage type=complete
        #pragma HLS ARRAY_PARTITION variable=curr_localImage type=complete

        getLocalImages_single(idx, psfSupersample, projShape0, projShape1, atomLocations, localImages);
        Image_extract(idx, localImages, fullImage, curr_fullImage, 
            imageProjs_local, curr_localImage, imageProjs, curr_imageProjs); 
        //conv_kernel(curr_fullImage, curr_localImage, projSumUsed, sum);     
        matrix_sum_prod(curr_localImage, curr_fullImage, projSumUsed, sum);   
        post_process(projSumUsed, sum, curr_imageProjs, emissions[idx]);
    }
}