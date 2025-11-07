if(blackalpha > 0)
{
    blackalpha -= 0.02;
    alarm[1] = 1;
}
else
{
    startX = RangeClamp(player.x - 600, 0, RangeClamp(room_width - 1200, 0, room_width - 1200));
    startY = RangeClamp(player.y - 406, 0, RangeClamp(room_width - 912, 0, room_width - 912));
    __view_set( e__VW.WView, 0, RangeClamp(1200, 0, room_width) );
    __view_set( e__VW.HView, 0, RangeClamp(912, 0, room_height) );
    __view_set( e__VW.XView, 0, startX );
    __view_set( e__VW.YView, 0, startY );
    if((__view_get( e__VW.HView, 0 ) / __view_get( e__VW.WView, 0 )) > 19 / 25)
    {
        __view_set( e__VW.WView, 0, __view_get( e__VW.HView, 0 ) / 19 * 25 );
    }
    else
    {
        __view_set( e__VW.HView, 0, __view_get( e__VW.WView, 0 ) / 25 * 19 );
    }
    movable = true;
}

