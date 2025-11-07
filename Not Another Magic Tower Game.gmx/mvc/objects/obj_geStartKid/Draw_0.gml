px = x + 50 * cos(degtorad(image_angle));
py = y - 50 * sin(degtorad(image_angle));
draw_sprite_ext(sprite_index,0,px,py,image_xscale,image_yscale,image_angle,c_gray,0.5 * image_alpha);
draw_current();

