
// draw_surface_ext_center(surface, cx, cy, xscale, yscale,angle, color, alpha);
// Draws the given surface, placing its center at the specified coordinate.
var surface, cx, cy, xscale, yscale, angle, color, alpha;
surface = argument0;
cx = argument1;
cy = argument2;
xscale = argument3;
yscale = argument4;
angle = argument5;
color = argument6;
alpha = argument7;

// Note that draw_surface_ext rotates the surface around its top left corner.
// So, we have to determine the coordinates of the top left corner
// rotated by angle around the center.
var x0, y0; // Coordinates of the top-left corner relative to the center
x0 = -surface_get_width(surface) * xscale / 2;
y0 = -surface_get_height(surface) * yscale / 2;
draw_surface_ext(surface,
 cx + lengthdir_x(x0, angle) - lengthdir_y(y0, angle),
 cy + lengthdir_x(y0, angle) + lengthdir_y(x0, angle),
 xscale, yscale, angle, color, alpha);
