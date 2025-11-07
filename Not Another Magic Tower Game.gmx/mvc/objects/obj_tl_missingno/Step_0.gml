if(status == 0)
{
    angle += 5;
    y = oy + 10 * sin(degtorad(angle));
}

if(!player_is_alive())
{
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, 0 );
    __view_set( e__VW.HView, 0, 384 );
    __view_set( e__VW.WView, 0, 800 );
}

