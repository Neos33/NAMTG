var s_prev, s_next, s_width, s_height, fraction;
s_prev = argument0; 
s_next = argument1;
s_width = argument2;
s_height = argument3;
fraction = argument4; 

draw_surface_stretched(s_prev, 0, 0, s_width * (1 - fraction), s_height);

draw_surface_stretched(s_next, s_width * (1 - fraction), 0, s_width * fraction, s_height);
