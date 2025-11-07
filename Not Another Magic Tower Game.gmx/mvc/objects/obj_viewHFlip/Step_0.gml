if(__view_get( e__VW.HView, 0 ) > targetView)
{
    __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) - (stepChange) );
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (stepChange / 2) );
}
else
{
    __view_set( e__VW.YView, 0, 0 );
    __view_set( e__VW.HView, 0, -targetView );
    __view_set( e__VW.Angle, 0, 180 );
    instance_destroy();
}

