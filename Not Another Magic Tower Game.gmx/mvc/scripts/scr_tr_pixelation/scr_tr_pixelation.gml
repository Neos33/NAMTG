// Script for "Pixelation" room transition
var surfaces, s_width, s_height, fraction;
surfaces[0] = argument0; // Surface with the image of the previous room
surfaces[1] = argument1; // Surface with the image of the next room
s_width = argument2; // Width of the surface
s_height = argument3; // Height of the surface
fraction = argument4; // Fraction (between 0 and 1)

/******** Configuration parameters *******/
var max_size;
max_size = 24; // Maximum size of pixels
// Note: maing blend_factor large causes the blended image darker.
/********/

var scale, tmp_surface, tw, th, sn, alpha;
scale = round(1 + (1 - abs(0.5 - fraction) * 2) * (max_size - 1));
tw = ceil(s_width / scale);
th = ceil(s_height / scale);

draw_clear(c_black);

tmp_surface = surface_create(tw, th);
for (sn = 0; sn < 2; sn += 1) {
    // First, squash the image onto a small surface.
    surface_set_target(tmp_surface);
    draw_surface_stretched(surfaces[sn], 0, 0, tw, th);
    surface_reset_target();

    // Then stretch it, causing pixelate graphics.
    // At the middle of the transition, blend two images for smooth transition.
    alpha = cos(fraction * pi / 2);
    if (sn == 1) alpha = 1 - alpha;
    draw_surface_stretched_ext(tmp_surface, 0, 0, s_width, s_height, c_white, alpha);
}
surface_free(tmp_surface);
