if(dead) exit;
with(other)
{
    hitEffect();
    instance_destroy();
}
if(!finalStart) exit;
if(cooldown == 0)
{   
    damage = global.attackDamage;

    if(!global.GalleryBossFight && !global.inGallery)
    {
        if(global.SaintSword)
        {
            damage = round(damage * 1.5);
        }
    }
    
    damageInfo = instance_create(x + sprite_width / 2 - sprite_xoffset,y + sprite_height / 2 - sprite_yoffset,obj_damageInfo);
    damageInfo.damage = damage;
    
    damageInfo.font = fontDamageInfo1;
    damageInfo.color = c_white;        
    damageInfo.level = 1;

    hp -= damage;
    if(hp <= 0)
    {
        audio_playsound(sndDeath);
        if(!global.GalleryBossFight)
        {
            global.TotalKills += 1;
        }
        dead = true;
        alarm[10] = 1;
        with(obj_finalBossBullet)
        {
            instance_create(x,y,obj_tlBulletClearEffect);
            instance_destroy();
        }
        with(obj_finalBossBullet2)
        {
            instance_create(x,y,obj_tlBulletClearEffect);
            instance_destroy();
        }
        alarm[2] = 200;
    }
    else
    {
        cooldown = 3;
        alarm[0] = 1;
    }
}

per = hp/6666;
repeat(2)
{
    with(obj_tlHPBar)
    {
        t = instance_create(x+width*other.per,y+random_range(0,height),obj_hitEffect);
        t.speed = random_range(5,7);
        t.direction = random_range(175,185);
    }
}

