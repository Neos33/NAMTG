if(hp > hpLimit)
{
    with(other)
    {
        hitEffect();
        instance_destroy();
    }
    if(!cooldown)
    {    
        hp -= global.attackDamage;
        if(hp <= 0 && hpLimit <= 0)
        {
            audio_playsound(sndDeath);
            if(!global.GalleryBossFight)
            {
                global.TotalKills += 1;
            }
            visible = false;
            alarm[2] = 20;
        }
        else
        {
            audio_playsound(sndBossHit);
            cooldown = true;
            alarm[0] = 1;
            alarm[1] = 50;
        }
    }
    if(hp < hpLimit && hpLimit > 0)
    {
        hp = hpLimit;
    }
}
else if(hp > 0)
{
    with(other)
    {
        instance_destroy();
    }
    alarm[10] = 1;
}

