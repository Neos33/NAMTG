if(sprite_exists(spr)) {
    draw_sprite(spr, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
}
else
{
    draw_current();
}

