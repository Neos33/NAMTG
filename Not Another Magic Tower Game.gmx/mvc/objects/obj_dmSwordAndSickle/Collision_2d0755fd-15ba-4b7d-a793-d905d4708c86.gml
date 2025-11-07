if(!cooldown)
{   
    hp -= 1;
    if(hp <= 0)
    {
        instance_destroy();
    }
    else
    {
        audio_playsound(sndBossHit);
        cooldown = true;
        alarm[0] = 1;
        if(global.special[8])
        {
            alarm[1] = 25;
        }
        else
        {
            alarm[1] = 50;
        }
    }
}
with(other)
{
    hitEffect();
    instance_destroy();
}

