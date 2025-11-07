buffer_surface = surface_create(room_width*1.5,room_height*1.5); 

surface_set_target(buffer_surface); 
draw_clear(c_black);
redrawn=false;
//screen_redraw();
redrawn = true;
surface_reset_target();

alarm[0] = 1;

