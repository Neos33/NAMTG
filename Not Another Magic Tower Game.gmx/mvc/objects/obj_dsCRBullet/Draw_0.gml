draw_set_blend_mode(bm_add);
if(!start)
{
    draw_sprite_ext(spr_danmaku12,1,x,y,1.5,1.5,0,c_white,image_alpha);
}
else
{
    draw_current();
}
draw_set_blend_mode(bm_normal);

