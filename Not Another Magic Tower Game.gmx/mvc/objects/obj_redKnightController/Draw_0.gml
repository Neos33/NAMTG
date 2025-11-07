for(var i = 0; i < 400 - 190; i += tileWidth)
{
    for(var j = -tileWidth; j < 608; j += tileWidth)
    {
        if((i + tileWidth) < (400 - 190))
        {
            draw_sprite(spr_redKnightTile, 0, i, __view_get( e__VW.YView, 0 ) + j  + (tileOffsetY mod tileWidth));
        }
        else
        {
            partWidth = 400 - 190 - i;
            draw_sprite_part(spr_redKnightTile,0,0,0,partWidth,tileWidth,i, __view_get( e__VW.YView, 0 ) + j  + (tileOffsetY mod tileWidth));
        }
    }
}


for(var i = 800; i > 400 + 190; i -= tileWidth)
{
    for(var j = -tileWidth; j < 608; j += tileWidth)
    {
        if(i > 400 + 190 + tileWidth)
        {
            draw_sprite(spr_redKnightTile, 0, i - tileWidth, __view_get( e__VW.YView, 0 ) + j  + (tileOffsetY mod tileWidth));
        }
        else
        {
            partWidth = i - 400 - 190;
            draw_sprite_part(spr_redKnightTile,0,tileWidth - partWidth,0,partWidth,tileWidth,i - partWidth, __view_get( e__VW.YView, 0 ) + j  + (tileOffsetY mod tileWidth));
        }
    }
}

