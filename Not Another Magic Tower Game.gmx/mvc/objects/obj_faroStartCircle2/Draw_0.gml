draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,(1-image_alpha)*alpha);
draw_set_blend_mode(bm_normal);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha*alpha);


