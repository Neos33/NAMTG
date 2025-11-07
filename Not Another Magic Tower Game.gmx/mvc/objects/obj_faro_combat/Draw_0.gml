iScale = (step mod 30)/30;
draw_sprite_ext(sprite_index, image_index, x,y,image_xscale + iScale, image_yscale + iScale, 0, c_white, iScale * image_alpha);
draw_current();

