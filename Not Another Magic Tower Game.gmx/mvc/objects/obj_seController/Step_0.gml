time += 1;
if(room == rSleepingEnd)
{
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (vhspd) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (vvspd) );
}
else
{
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, 0 );
}

if(keyboard_check_pressed(global.skipbutton))
{
    obj_seBlack.alarm[3] = 1;
    instance_destroy();
}

