if(!boom)
{
    if(!trace)
    {
        if(point_distance(x,y,obj_asQTEPlayer.x - 75, obj_asQTEPlayer.y - 57) < spd)
        {
            x = obj_asQTEPlayer.x - 75;
            y = obj_asQTEPlayer.y - 57;
            speed = 0;
            trace = true;
            __view_set( e__VW.WView, 0, 150 );
            __view_set( e__VW.HView, 0, 114 );
        }
        else
        {
            move_towards_point(obj_asQTEPlayer.x - 75, obj_asQTEPlayer.y - 57, spd);
            __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) - (13) );
            __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) - (9.88) );
        }
    }
    else
    {
        x = obj_asQTEPlayer.x - 75;
        y = obj_asQTEPlayer.y - 57;
    }
}
else
{
    if(point_distance(x,y,0,0) < spd)
    {
        instance_destroy();
    }
    else
    {
        move_towards_point(0,0, spd);
        __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) + (21.67) );
        __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) + (16.47) );
    }
}
__view_set( e__VW.XView, 0, x );
__view_set( e__VW.YView, 0, y );

