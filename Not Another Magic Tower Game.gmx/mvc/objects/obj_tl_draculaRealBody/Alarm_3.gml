if(meteorCount > 0)
{
    if(meteorCount == 10)
    {
        audio_playsound(sndBurst1);
    }
    meteorCount -= 1;
    instance_create(x,y,obj_draculaMeteor3);
    alarm[3] = 15;
}

