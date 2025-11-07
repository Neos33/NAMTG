for(i = hOffset; i < __view_get( e__VW.WView, 0 ); i += sprite_width)
{
    for(j = vOffset - sprite_height; j < __view_get( e__VW.HView, 0 ); j += sprite_height)
    {
        draw_sprite_ext(sprite_index,image_index,i,j,1,1,0,c_white,0.3);
    }
}

