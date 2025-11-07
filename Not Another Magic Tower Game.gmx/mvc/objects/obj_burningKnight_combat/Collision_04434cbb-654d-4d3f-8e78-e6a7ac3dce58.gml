if(!cooldown)
{   
    damage = global.attackDamage;
    var damageInfo = instance_create(x + sprite_width / 2 - sprite_xoffset,y + sprite_height / 2 - sprite_yoffset,obj_damageInfo);
    damageInfo.damage = damage;
    damageInfo.font = fontDamageInfo1;
    damageInfo.color = c_white;        
    damageInfo.level = 1;
    hp -= damage;
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

