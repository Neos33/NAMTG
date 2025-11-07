if(!diao)
{
    draw_current();
}
else
{
    var height = baseY - (y-39);
    if(height > 0)
    {
        draw_sprite_part_ext(sprite_index,image_index,0,0,90,height,x-45*ind,y-39,image_xscale,image_yscale,image_blend,image_alpha);
    }
}

