if(status == 0)
{
    draw_current();
}
else if(status == 1)
{
    for(var i = 0; i < pCount; i += 1)
    {
        for(var j = 0; j < 8; j += 1)
        {
            draw_sprite_part_ext(spr[result],image_index, 0, 4 * j, 32, 4 / 25 * pCount, x, y + 4 * j,1,1,c_white,1);        
        }
    }
}
else if(status == 2)
{

}


