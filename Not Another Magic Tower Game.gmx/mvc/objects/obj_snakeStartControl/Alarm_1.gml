if(__view_get( e__VW.XView, 0 ) < (room_width - 800))
{
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (1) );
    alarm[1] = 3;
}
else
{
    __view_set( e__VW.XView, 0, room_width - 800 );
}

