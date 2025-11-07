with(obj_light3)phase=1;
__view_set( e__VW.XView, 0, RangeClamp(player.x - 400 + 60 * 5, 0, 800) );
__view_set( e__VW.YView, 0, 45 * 10 );
__view_set( e__VW.WView, 0, 800 - 60 * 10 );
__view_set( e__VW.HView, 0, 608 - 45 * 10 );
vcontrol = instance_create(x,y,object987);
vcontrol.alarm[0] = 1;
vcontrol.para = 5;

