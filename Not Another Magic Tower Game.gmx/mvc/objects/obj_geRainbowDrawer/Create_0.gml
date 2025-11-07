color[0] = c_red;
color[1] = c_orange;
color[2] = c_yellow;
color[3] = c_green;
color[4] = c_blue;
color[5] = c_navy;
color[6] = c_purple;

surf = surface_create(room_width,room_height);
surface_set_target(surf);
draw_clear(c_black);
surface_reset_target();

radius = 192;
alpha = 1;

speed = 2.5;
direction = 15;

