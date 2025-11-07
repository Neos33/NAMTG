speed = spd*abs(cos(tt));
tt += 0.08;
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha);
draw_set_blend_mode(bm_normal);

