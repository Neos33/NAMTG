draw_set_color(c_white);
if(drawLaser == 1)
{
    effect_create_above(ef_spark, x - 12, y + 4, 0, c_yellow);

}
else if(drawLaser == 2)
{
    effect_create_above(ef_spark, x + 12, y + 4, 0, c_yellow);
}
else if(drawLaser == 3)
{
    effect_create_above(ef_spark, x - 12, y + 4, 0, c_yellow);
    effect_create_above(ef_spark, x + 12, y + 4, 0, c_yellow);

}
if(drawDirt)
{
    dHeight = 572 - (y - 16);
    if(dHeight > 0)
    {
        draw_sprite_part_ext(sprite_index,image_index,0,0,32,dHeight,x - 16,y - 16, 1,1,image_blend,image_alpha);
    }
}
else
{
    draw_current();
}

