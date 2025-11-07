sound_fix(sndDark2);
surf = surface_create(room_width,room_height);
surface_set_target(surf);
draw_clear(c_black);
surface_reset_target();
alpha = 0;
alarm[11] = 1;
alarm[10] = 250;
alarm[0] = 50;
alarm[1] = 80;

