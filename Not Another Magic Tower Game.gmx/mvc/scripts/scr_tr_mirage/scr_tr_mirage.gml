// Script for "Mirage" room transition
var surfaces, s_width, s_height, fraction;
surfaces[0] = argument0; // Surface with the image of the previous room
surfaces[1] = argument1; // Surface with the image of the next room
s_width = argument2; // Width of the surface
s_height = argument3; // Height of the surface
fraction = argument4; // Fraction (between 0 and 1)

/******** Configuration parameters *******/
var strip_height, wiggle, cycles;
strip_height = 8; // Width of each strip to form a mirage; the smaller, the smooother.
amplitude = 0.1; // Amout of wiggle (ratio to the width of the surface)
cycles = 8; // Number of wiggling waves
phase_speed = 0.7; // Speed of wiggle
/********/

// Draw the background
draw_clear(c_black);

var sn, tex, tw, th;
var i, strip_count, left, top, tt;
strip_count = ceil(s_height / strip_height);

// This transition is a combination of three effects:
// Divide the surface into strips, and shift each strip along with a sine curve.
// Increase and decrease the amplitude of the sine curve according to fraction.
// Blend from top: blending rate increases from top to bottom.
for (sn = 0; sn < 2; sn += 1) {
    tex = surface_get_texture(surfaces[sn]);
    tw = texture_get_width(tex);
    th = texture_get_height(tex);

    draw_primitive_begin_texture(pr_trianglestrip, tex);
    for (i = 0; i <= strip_count; i += 1) {
        left = amplitude * s_width * cos((i / strip_count - fraction * phase_speed) * pi * cycles) * sin(fraction * pi);
        top = i * strip_height;
        tt = top / s_height * th;
        alpha = max(0, min(1, (1 + i / strip_count - fraction * 2)));
        if (sn == 1) alpha = 1 - alpha;
        
        draw_vertex_texture_color(left, top, 0, tt, c_white, alpha);
        draw_vertex_texture_color(left + s_width, top, tw, tt, c_white, alpha);
    }
   draw_primitive_end();
}
