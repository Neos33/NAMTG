draw_set_blend_mode(bm_add);
if(!move)
{
    draw_current();
}
else
{
    for(var i=0;i<5;i+=1)
    {
        var alpha = (i+1)*0.2;
        var tx = x;
        var ty = y - (4-i)*8*sign(vspeed);
        draw_sprite_ext(sprite_index,image_index,tx,ty,image_xscale,image_yscale,image_angle,image_blend,alpha);
    }
}
draw_set_blend_mode(bm_normal);

