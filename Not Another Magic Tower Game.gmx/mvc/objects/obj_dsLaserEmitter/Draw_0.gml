draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,0.95);
draw_set_blend_mode(bm_add);
repeat(floor(count))
{
    draw_current();
}
draw_set_blend_mode(bm_normal);

