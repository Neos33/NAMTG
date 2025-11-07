if(__view_get( e__VW.WView, 0 ) > -800)
{
    __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) - (16) );
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (8) );
    alarm[4] = 1;
}

