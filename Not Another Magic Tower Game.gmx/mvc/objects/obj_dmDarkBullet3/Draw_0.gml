draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*1.1,image_yscale*1.1,image_angle,image_blend,image_alpha * 0.5);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*1.05,image_yscale*1.05,image_angle,image_blend,image_alpha * 0.75);
draw_current();
draw_set_blend_mode(bm_normal);

