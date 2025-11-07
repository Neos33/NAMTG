deathHeartCount += 1;
audio_playsound(sndKiss);
instance_create(x,y-10,obj_deathHeart1);
if(deathHeartCount < 3)
{
    alarm[4] = 100;
}
else
{
    thunderCount = 0;
    alarm[5] = 150;
}

