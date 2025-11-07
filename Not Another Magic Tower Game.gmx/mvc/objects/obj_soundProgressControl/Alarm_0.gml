if(!soundPaused)
{
    currentPos += 1;
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (global.dashSpd) );
    alarm[0] = 1;
}


