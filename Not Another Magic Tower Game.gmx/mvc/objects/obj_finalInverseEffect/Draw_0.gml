draw_set_blend_mode_ext(bm_inv_dest_color,bm_inv_src_color);
draw_sprite_ext(sprite_index,image_index,400,304,image_xscale,image_yscale,0,c_white,1);
draw_set_blend_mode(bm_normal);
timer += 1;
if timer<13{
    image_xscale += 2;
}
else if timer<100{
    image_yscale += yy;
    if yy>0 yy -= 0.009;
}

