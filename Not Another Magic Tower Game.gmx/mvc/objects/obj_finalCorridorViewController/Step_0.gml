if(player_is_alive())
{
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, RangeClamp(player.y - 304, 0, room_height - 608) + yShift );
}

