if(status == 1)
{
    if(!instance_exists(obj_slime_s_summoned))
    {
        if(!cooldown)
        {    
            hp -= global.attackDamage;
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
        status = 2;
        alarm[3] = 70;
        initialized = false;
    }
}
else if(status == 3)
{
    if(!instance_exists(obj_slime_red_summoned))
    {
        if(!cooldown)
        {    
            hp -= global.attackDamage;
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
        status = 4;
        alarm[3] = 70;
        initialized = false;
    }
}
else if(status == 5)
{
    if(!instance_exists(obj_slime_black_summoned))
    {
        if(!cooldown)
        {    
            hp -= global.attackDamage;
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
        status = 6;
        centerX = x + 16;
        centerY = y + 16;
        initialized = false;
    }
}
else if(status == 6)
{
    initialized = false;
    if(image_xscale < 3)
    {
        image_xscale += 0.02;
        image_yscale += 0.02;
        x -= 0.02 * 16;
        y -= 0.02 * 16;
    }
    else
    {
        image_xscale = 3;
        image_yscale = 3;
        x = centerX - 48;
        y = centerY - 48;
        status = 7;
        alarm[7] = 10;
    }
}

