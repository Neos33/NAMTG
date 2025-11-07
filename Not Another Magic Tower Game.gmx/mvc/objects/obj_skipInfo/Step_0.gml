if(room == rBadEnding)
{
    x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - sprite_width / 2 - 16;
}
if(room == rSleepingEnd)
{
    x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - sprite_width / 2 - 24;
    y = __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 48;
}

