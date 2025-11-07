for(i = 0; i < 10; i += 1)
{
    instance_create(random_range(__view_get( e__VW.XView, 0 ) + 16,__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 16), __view_get( e__VW.YView, 0 ) + 48 + 55 * i, obj_giantBatBGDash);
}
alarm[0] = 15;

