with(obj_taisaLaser){instance_destroy();}
with(obj_taisaLaserEmitter){instance_destroy();}
with(obj_taisaBullet){instance_destroy();}
with(obj_taisa){image_alpha=0;alarm[2]=1;}
with(obj_taisaPattern){instance_destroy();}
sound_fix(se_enep01);
a = instance_create(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),obj_taisaEffect);
a.time = 10;

if(!global.achievements[105])
{
    ch = instance_create(0,608,obj_achievements);
    ch.index = 105;
    global.achievements[105] = 1;
}

