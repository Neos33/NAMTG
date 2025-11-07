// Script for "Create diagonal in 1" transition
var s_prev, s_next, s_width, s_height, fraction;
s_prev = argument0; 
s_next = argument1; 
s_width = argument2; 
s_height = argument3; 
fraction = argument4; 

draw_surface(s_prev, 0, 0);

var tex, tw, th, f;
tex = surface_get_texture(s_next);
tw = texture_get_width(tex);
th = texture_get_height(tex);

draw_set_alpha(1);
draw_set_blend_mode(bm_normal);
draw_set_color(c_white);

draw_primitive_begin_texture(pr_trianglelist, tex);

f = fraction;
draw_vertex_texture(0, 0, 0, 0);
draw_vertex_texture(s_width * f, 0, tw * f, 0);
draw_vertex_texture(0, s_height * f, 0, th * f);

f = 1 - fraction;
draw_vertex_texture(s_width, s_height, tw, th);
draw_vertex_texture(s_width * f, s_height, tw * f, th);
draw_vertex_texture(s_width, s_height * f, tw, th * f);

draw_primitive_end();
