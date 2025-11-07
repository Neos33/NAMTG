draw_set_blend_mode(bm_add);
draw_sprite_ext(sprite_index,image_index,x,y,scale,scale,0,c_white,2-scale);
draw_current();
draw_set_blend_mode(bm_normal);

