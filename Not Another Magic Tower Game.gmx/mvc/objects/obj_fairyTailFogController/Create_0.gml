for(var i = 0; i < 576; i += 4)
{
    instance_create(__view_get( e__VW.XView, 0 ) + 208 + i, __view_get( e__VW.YView, 0 ) + 204, obj_fairyTailFog);
    instance_create(__view_get( e__VW.XView, 0 ) + 208 + i, __view_get( e__VW.YView, 0 ) + 406, obj_fairyTailFog);
    instance_create(__view_get( e__VW.XView, 0 ) + 396, __view_get( e__VW.YView, 0 ) + 16 + i, obj_fairyTailFog);
    instance_create(__view_get( e__VW.XView, 0 ) + 598, __view_get( e__VW.YView, 0 ) + 16 + i, obj_fairyTailFog);
}

//surf = surface_create(800, 608);
surf = noone;
list = ds_list_create();
for(var i=0; i < 9; i += 1)
{
    ds_list_add(list,i);
}
ds_list_shuffle(list);

