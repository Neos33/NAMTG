obj_skeletonSword.status = 1;
if(image_xscale > 0)
{
    wind = instance_create(x - 32, y - 32, obj_swordwind);
    wind.hspeed = -5;
}
else
{
    wind = instance_create(x + 32, y - 32, obj_swordwind);
    wind.hspeed = 5;
}
audio_playsound(sndwind1);
alarm[4] = 50;

