#ifndef TYPES_H
#define TYPES_H


#include "gba/types.h"


typedef void (*ProcedureFunc)(void);


// Amount of subpixels in one visible pixel
#define PIXEL_SIZE 4
// Amount of pixels in one block
#define BLOCK_SIZE_PIXELS 16

// Size of a block in subpixels
#define BLOCK_SIZE (BLOCK_SIZE_PIXELS * PIXEL_SIZE)
// Half the size of a block, in subpixels
#define HALF_BLOCK_SIZE (BLOCK_SIZE / 2)
// One quarter the size of a block, in subpixels
#define QUARTER_BLOCK_SIZE (BLOCK_SIZE / 4)
// One-eighth the size of a block, in subpixels
#define EIGHTH_BLOCK_SIZE (BLOCK_SIZE / 8)

#define SUBPIXELS_FROM_PIXELS(pixels) ((pixels) * PIXEL_SIZE)
#define SUBPIXELS_FROM_BLOCKS(blocks) ((blocks) * BLOCK_SIZE)

#define PIXELS_FROM_SUBPIXELS(subpixels) ((subpixels) / PIXEL_SIZE)
#define PIXELS_FROM_BLOCKS(blocks) ((blocks) * BLOCK_SIZE_PIXELS)

#define BLOCKS_FROM_SUBPIXELS(subpixels) ((subpixels) / BLOCK_SIZE)
#define BLOCKS_FROM_PIXELS(pixels) ((pixels) / BLOCK_SIZE_PIXELS)

// Target FPS
#define FRAME_RATE 60
// Convert a floating-point value of seconds into frames
#define CONVERT_SECONDS(seconds) ((u32) ((seconds) * FRAME_RATE))

#define DELTA_TIME 1
#define TIMER_COUNT_DOWN(timer) (timer) -= DELTA_TIME
#define TIMER_COUNT_UP(timer) (timer) -= DELTA_TIME

#endif /* TYPES_H */
