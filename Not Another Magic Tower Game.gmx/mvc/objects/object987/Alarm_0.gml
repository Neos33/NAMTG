if(para > 1)
{
para -= 0.2;
__view_set( e__VW.XView, 0, RangeClamp(player.x - 400 + 60 * para, 0, 800) );
__view_set( e__VW.YView, 0, 45 * para * 2 );
__view_set( e__VW.WView, 0, 800 - 60 * para );
__view_set( e__VW.HView, 0, 608 - 45 * para );
alarm[0] = 1;
}
else
{
 __view_set( e__VW.XView, 0, 0 );
 __view_set( e__VW.YView, 0, 0 );
 __view_set( e__VW.WView, 0, 800 );
 __view_set( e__VW.HView, 0, 608 );
}

