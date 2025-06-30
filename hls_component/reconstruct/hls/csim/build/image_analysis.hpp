#include "hls_stream.h"

#define IMAGE_DTYPE float
// #define IMAGE_PROJECTION_SIZE   100
// #define IMAGE_PROJECTION_LOCAL  1000
// #define FULL_IMAGE_SIZE     256*256
#define IMAGE_PROJECTION_SIZE   1024
#define IMAGE_PROJECTION_LOCAL  1024
#define FULL_IMAGE_SIZE     768*768

typedef struct {
    float x;
    float y;
} atom_location;

typedef struct {
    int X_int;
    int Y_int;
    int X_min;
    int Y_min;
    int X_max;
    int Y_max;
    int dx;
    int dy;
} local_image_info;

void reconstruct(int atomLocationsSize,int projShape0, int projShape1, atom_location atomLocations[1024],
    int psfSupersample, 
    int imageProjectionSize, 
    IMAGE_DTYPE imageProjs_local[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE], 
    IMAGE_DTYPE imageProjs[IMAGE_PROJECTION_SIZE],
    int imageProjs_local_size[IMAGE_PROJECTION_SIZE],
    IMAGE_DTYPE fullImage[FULL_IMAGE_SIZE],
    int fullImage_rows, int fullImage_cols,  IMAGE_DTYPE* emissions);