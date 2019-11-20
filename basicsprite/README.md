### Basic Sprites

This folder contains the code for showcasing loading of basic sprites and palettes
in to ram and then displaying them to the screen.

To acomplish this we essentially have 3 steps:
* Load the tile in to memory
* Load the palette in to memory
* Set the proper IO flags

The first two steps are pretty self explanitory, but for the third step we need to look at the
flags for the `REG_DISPCNT` register. In particuler we are looking at making sure we have 1D
sprite mapping enabled(bit 6) and that we have enabled object display enabled(bit 11).

#### Note on creating sprites
I used an program called Usenti: https://www.coranac.com/projects/usenti/.

Usenti offers export options for GBA formats(which is really just integer arrays)
For use in this tutorial I used u16 exports for both tile and palette.
Both the `tile` and `pal` variables are from usenti exports.
