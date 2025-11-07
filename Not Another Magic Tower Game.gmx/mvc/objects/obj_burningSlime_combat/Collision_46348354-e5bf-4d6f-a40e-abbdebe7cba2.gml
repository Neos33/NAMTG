if(!other.damage)
{
    other.damage = true;
 
    damage = global.attackDamage * 3;
    var damageInfo = instance_create(x + sprite_width / 2 - sprite_xoffset,y + sprite_height / 2 - sprite_yoffset,obj_damageInfo);
    damageInfo.damage = damage;
    damageInfo.font = fontDamageInfo3;
    damageInfo.color = c_red;        
    damageInfo.level = 3;
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

