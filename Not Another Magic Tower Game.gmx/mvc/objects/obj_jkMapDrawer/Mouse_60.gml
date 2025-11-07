if(movable)
{
    startW = RangeClamp(__view_get( e__VW.WView, 0 ) + mapMoveSpd, 0, room_width);
    startH = RangeClamp(__view_get( e__VW.HView, 0 ) + mapMoveSpd, 0, room_height);
    if((startH / startW) > 19 / 25)
    {
        startW = startH / 19 * 25;
    }
    else
    {
        startH = startW / 25 * 19;
    }
    wGap = __view_get( e__VW.WView, 0 ) - startW;
    hGap = __view_get( e__VW.HView, 0 ) - startH;
    __view_set( e__VW.WView, 0, startW );
    __view_set( e__VW.HView, 0, startH );
    startX = RangeClamp(__view_get( e__VW.XView, 0 ) - wGap / 2, 0, room_width);
    startY = RangeClamp(__view_get( e__VW.YView, 0 ) - hGap / 2, 0, room_height);
    __view_set( e__VW.XView, 0, startX );
    __view_set( e__VW.YView, 0, startY );
}

