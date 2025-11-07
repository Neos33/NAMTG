if(add)
{
    draw_set_blend_mode(bm_add);
}
if(speed > maxspd && maxspd != 0)
{
    speed = maxspd;
    friction = 0;
}
direction += dirspd;
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha);
draw_set_blend_mode(bm_normal);

