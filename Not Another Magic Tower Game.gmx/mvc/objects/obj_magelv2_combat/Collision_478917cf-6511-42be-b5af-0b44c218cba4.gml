if(!cooldown)
{    
    hp -= global.attackDamage;
    isFire = true;
    if(hp <= 0)
    {
        audio_playsound(sndDeath);
        if(!global.inGallery)
        {
            global.TotalKills += 1;
        }
        alarm[2] = 1;
    }
    else
    {
        audio_playsound(sndBossHit);
        cooldown = true;
        alarm[0] = 1;
        alarm[1] = 50;
    }
}

