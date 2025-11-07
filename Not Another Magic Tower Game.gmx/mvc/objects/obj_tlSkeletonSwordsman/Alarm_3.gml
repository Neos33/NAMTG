obj_tlSkeletonSword.start = true;
if(image_xscale > 0)
{
    var wind = instance_create(x - 32, y - 32, obj_tlSkeletonWind);
    wind.hspeed = -5;
}
else
{
    var wind = instance_create(x + 32, y - 32, obj_tlSkeletonWind);
    wind.hspeed = 5;
}
audio_playsound(sndwind1);
alarm[4] = 50;

