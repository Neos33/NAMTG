global.dashSpd = spd;
global.buildMode = true;
__view_set( e__VW.XView, 0, 0 );
__view_set( e__VW.YView, 0, 0 );
SS_StopAll();
with(player)
{
 instance_destroy();
}
list = global.GDList;
size = ds_list_size(list);
bgOffset = 0;
loadGDDesign(global.gdFile);
global.currentBGM = bgm;
audio_playmusic_volume(bgm);
if(instance_number(obj_GD_Ground) == 0)
{
    t = 0;
    while(t < room_width)
    {
     instance_create(t, __view_get( e__VW.YView, 0 ) + 512, obj_GD_Ground);
     t += 256;
    }
}
instance_create(x,y,obj_imageBlendController);
instance_create(__view_get( e__VW.XView, 0 ) + 32, 0, obj_GDObjEffectOut);
instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ), 0, obj_GDObjEffectIn);
alarm[0] = 1;

