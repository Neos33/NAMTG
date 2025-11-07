var _platform = instance_create(800, 288, obj_4b6Platform);
_platform.image_xscale = obj_4b6HREffect.scale;
_platform.image_yscale = obj_4b6HREffect.scale;
if(obj_4b6DTEffect.spd == 0)
{
    alarm[5] = irandom_range(96, 176);
}
else
{
    alarm[5] = irandom_range(96/obj_4b6DTEffect.spd, 176/obj_4b6DTEffect.spd);
}

