if(speed == 0)
{
    draw_set_blend_mode(bm_add);
    draw_sprite_ext(spr_danmaku12, choose(1,6),x,y,1,1,image_angle,image_blend,image_alpha)
    draw_set_blend_mode(bm_normal);
}
else
{
    draw_current();
}

