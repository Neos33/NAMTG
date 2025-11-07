if(add)draw_set_blend_mode(bm_add);
if(fade){
    draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    draw_sprite_ext(sprite_index, 5, x, y, image_xscale, image_yscale, image_angle, image_blend, 1-image_alpha);
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_set_blend_mode(bm_normal);

