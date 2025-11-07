per1 = abs(((time mod 100) - 50)/ 50);
per2 = 1 - per1;
draw_sprite_ext(sprite_index, 0,x,y,image_xscale,image_yscale, image_angle,c_white,per1);
draw_sprite_ext(sprite_index, 1,x,y,image_xscale,image_yscale, image_angle,c_white,per2);

