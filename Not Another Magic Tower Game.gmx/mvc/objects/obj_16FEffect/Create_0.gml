for(var i = 0; i < 10; i += 1)
{
    instance_create(random_range(__view_get( e__VW.XView, 1 ) + 16,__view_get( e__VW.XView, 1 ) + __view_get( e__VW.WView, 1 ) - 16), 48 + 55 * i, obj_giantBatBGDash);
}
alarm[0] = 15;
alarm[1] = 1;

