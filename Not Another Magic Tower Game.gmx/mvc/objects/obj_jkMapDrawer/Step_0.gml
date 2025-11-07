if(movable)
{
    moveRatio = __view_get( e__VW.WView, 0 ) / 800;
    if(keyboard_check(global.leftbutton))
    {
        startX = RangeClamp(__view_get( e__VW.XView, 0 ) - mapMoveSpd * moveRatio, 0,room_width - __view_get( e__VW.WView, 0 ));
    }
    if(keyboard_check(global.rightbutton))
    {
        startX = RangeClamp(__view_get( e__VW.XView, 0 ) + mapMoveSpd * moveRatio, 0,room_width - __view_get( e__VW.WView, 0 ));
    }
    if(keyboard_check(global.upbutton))
    {
        startY = RangeClamp(__view_get( e__VW.YView, 0 ) - mapMoveSpd * moveRatio, 0,room_height - __view_get( e__VW.HView, 0 ));
    }
    if(keyboard_check(global.rightbutton))
    {
        startY = RangeClamp(__view_get( e__VW.YView, 0 ) + mapMoveSpd * moveRatio, 0,room_height - __view_get( e__VW.HView, 0 ));
    }
    __view_set( e__VW.XView, 0, startX );
    __view_set( e__VW.YView, 0, startY );
}

