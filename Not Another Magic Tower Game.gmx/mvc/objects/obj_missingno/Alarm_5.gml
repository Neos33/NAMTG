if(__view_get( e__VW.HView, 0 ) > -384)
{
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) - (8) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (4) );
    alarm[5] = 1;
}

