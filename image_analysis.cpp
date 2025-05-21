#include "hls_stream.h"
#include "image_analysis.hpp"
#include <cmath>
#include <ostream>
#include "iostream"

void getLocalImages(int atomLocationsSize, int psfSupersample, int projShape0, int projShape1, 
                    atom_location* atomLocations, hls::stream<local_image_info>& localImages) {
    #pragma HLS PIPELINE
    atom_location local_atomLocations[100];
    #pragma HLS ARRAY_PARTITION variable=local_atomLocations complete dim=1
    // Copy input to local buffer
    copy_loop: for (int i = 0; i < atomLocationsSize; i++) {
        #pragma HLS PIPELINE II=1
        local_atomLocations[i] = atomLocations[i];
    }

    // Process each atom
    process_loop: for (int i = 0; i < atomLocationsSize; i++) {
        #pragma HLS PIPELINE II=1

        auto coord = local_atomLocations[i];
        local_image_info info;

        int y_int = (int)std::round(coord.y);
        int x_int = (int)std::round(coord.x);

        info.X_int = x_int;
        info.Y_int = y_int;        
        info.Y_min = y_int - projShape0 / 2;
        info.X_min = x_int - projShape1 / 2;
        info.Y_max = info.Y_min + projShape0 - 1;
        info.X_max = info.X_min + projShape1 - 1;
        info.dx = (int)(std::round((coord.x - x_int) * psfSupersample));
        info.dy = (int)(std::round((coord.y - y_int) * psfSupersample));

        localImages.write(info);        
    }
}



// void getLocalImages(int atomLocationsSize,int psfSupersample, int projShape0, int projShape1, atom_location* atomLocations, hls::stream<local_image_info>& localImages){
//     for(int i = 0; i < atomLocationsSize; i++){
//         auto coord= atomLocations[i];
//          local_image_info info;

//         int y_int = (int)std::round(coord.y);
//         int x_int = (int)std::round(coord.x);
//         info.X_int = x_int;
//         info.Y_int = y_int;        
//         info.Y_min = y_int - projShape0 / 2;
//         info.X_min = x_int - projShape1 / 2;
//         info.Y_max = (info.Y_min + projShape0) - 1;
//         info.X_max = (info.X_min + projShape1) - 1;
//         info.dx = (int)(std::round((coord.x - x_int) * psfSupersample));
//         info.dy = (int)(std::round((coord.y - y_int) * psfSupersample));
//         std::cout << "x_int " << x_int << " x_min " << info.X_min << " x_max " << info.X_max << " y_int " << y_int << " y_min " << info.Y_min << " y_max " << info.Y_max << std::endl;
//         localImages.write(info);        
//     }
// }

void applyProjectors(int atomLocationsSize, int psfSupersample, 
    int imageProjectionSize, 
    IMAGE_DTYPE imageProjs_local[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE], 
    IMAGE_DTYPE imageProjs[IMAGE_PROJECTION_SIZE],
    int imageProjs_local_size[IMAGE_PROJECTION_SIZE],
    IMAGE_DTYPE fullImage[FULL_IMAGE_SIZE],
    int fullImage_rows, int fullImage_cols,
    hls::stream<local_image_info>& localImages,  double* emissions, unsigned int& emission_cnt) {
    unsigned int emission_ptr = 0;
    for(int i = 0; i < atomLocationsSize; i++){
#pragma HLS PIPELINE II=1
        auto localImage = localImages.read();
        int xidx = (localImage.dx + psfSupersample) % psfSupersample;
        int yidx = (localImage.dy + psfSupersample) % psfSupersample;
        unsigned int proj_offset = yidx * psfSupersample + xidx;

        if((unsigned int)(proj_offset) >= imageProjectionSize)
            continue;

        double projSumUsed = 0;
        double sum = 0;
        int cols = localImage.X_max - localImage.X_min + 1;
        if((unsigned)(cols * (localImage.Y_max - localImage.Y_min + 1)) > imageProjs_local_size[proj_offset])
            continue;
        int row = localImage.Y_min;
        if(row <= 0)
            row = 0;
     
        for(; row <= localImage.Y_max && row < fullImage_rows; row++){
            int p = (row - localImage.Y_min) * cols;
            int col = localImage.X_min;
            if(col < 0) {
                p -= col;
                col = 0;
            }
            for(; col <= localImage.X_max && col < fullImage_cols; col++){    
                sum += fullImage[row* fullImage_cols + col] * imageProjs_local[IMAGE_PROJECTION_LOCAL * proj_offset + p];
                projSumUsed += imageProjs_local[IMAGE_PROJECTION_LOCAL * proj_offset + p];
                p++;
            }
        }
        if(projSumUsed > 0){
            std::cout << "sum " << sum << " imageProjs " << imageProjs[proj_offset] << " projSumUsed " << projSumUsed << std::endl;  
            //emissions.write(sum * (imageProjs[proj_offset] / projSumUsed));
            emissions[emission_ptr] = sum * (imageProjs[proj_offset] / projSumUsed);
            emission_ptr++;
        }
        else {
            emissions[emission_ptr] = 0;
            emission_ptr++;
            //emissions.write(0);
        }
    }
    emission_cnt = emission_ptr;
}


void reconstruct(int atomLocationsSize,int projShape0, int projShape1, atom_location atomLocations[100],
    int psfSupersample, 
    int imageProjectionSize, 
    IMAGE_DTYPE imageProjs_local[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE], 
    IMAGE_DTYPE imageProjs[IMAGE_PROJECTION_SIZE],
    int imageProjs_local_size[IMAGE_PROJECTION_SIZE],
    IMAGE_DTYPE fullImage[FULL_IMAGE_SIZE],
    int fullImage_rows, int fullImage_cols,  double* emissions, unsigned int& emission_cnt){


#pragma HLS INTERFACE port=return mode=s_axilite bundle=control

#pragma HLS INTERFACE port=atomLocationsSize mode=s_axilite bundle=scalar_data
#pragma HLS INTERFACE port=projShape0 mode=s_axilite bundle=scalar_data
#pragma HLS INTERFACE port=projShape1 mode=s_axilite bundle=scalar_data

#pragma HLS INTERFACE port=atomLocations mode=m_axi bundle=atomLocations depth=1000 storage_type=RAM_2P

#pragma HLS INTERFACE port=psfSupersample mode=s_axilite bundle=scalar_data
#pragma HLS INTERFACE port=imageProjectionSize mode=s_axilite bundle=scalar_data

#pragma HLS INTERFACE port=imageProjs_local mode=m_axi bundle=imageProjs_local
#pragma HLS INTERFACE port=imageProjs mode=m_axi bundle=imageProjs
#pragma HLS INTERFACE port=imageProjs_local_size mode=m_axi bundle=imageProjs_local_size

#pragma HLS INTERFACE port=fullImage mode=m_axi bundle=fullImage

#pragma HLS INTERFACE port=fullImage_rows mode=s_axilite bundle=scalar_data
#pragma HLS INTERFACE port=fullImage_cols mode=s_axilite bundle=scalar_data

#pragma HLS INTERFACE port=emissions mode=m_axi bundle=emissions depth=1000
#pragma HLS INTERFACE port=emission_cnt mode=s_axilite bundle=scalar_data




#pragma HLS DATAFLOW
        hls::stream<local_image_info> localImages;

        getLocalImages(atomLocationsSize, psfSupersample, projShape0, projShape1, atomLocations, localImages);
        applyProjectors(atomLocationsSize, psfSupersample, imageProjectionSize, imageProjs_local, imageProjs, imageProjs_local_size, fullImage, fullImage_rows, fullImage_cols, localImages, emissions, emission_cnt);
}


