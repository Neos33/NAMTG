with(other)
{
    hitEffect();
    instance_destroy();
}
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

sound_fix(sndDeath)
repeat(12)
{
    var aa=instance_create(x,y,obj_cherry);
    aa.sprite_index=spr_colorful_cherry;
    aa.image_index=irandom(5);
    aa.speed=4+irandom(3);
    aa.direction=irandom(360);
    aa.image_xscale=0.5;
    aa.image_yscale=0.5;
}
//instance_destroy();

