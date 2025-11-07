draw_set_blend_mode(bm_add);
repeat(2) draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_set_blend_mode(bm_normal);
image_alpha -= 0.06;
if(image_index == image_number - 1){
    instance_destroy();
}

