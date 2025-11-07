if(!cooldown)
{   
    damage = global.attackDamage;
    if(other.energy >= 1.5)
    {
        damage = round(global.attackDamage * other.energy);
    }
    if(haveshoot == 1 && instance_exists(obj_burningfasf_sample))
    {
        damageInfo = instance_create(x + sprite_width / 2 - sprite_xoffset,y + sprite_height / 2 - sprite_yoffset,obj_damageInfo);
        damageInfo.damage = damage;
        if(other.energy < 1.5)
        {
            damageInfo.font = fontDamageInfo1;
            damageInfo.color = c_white;        
            damageInfo.level = 1;
        }
        else if(other.energy <= 2)
        {
            damageInfo.font = fontDamageInfo2;
            damageInfo.color = c_yellow;  
            damageInfo.level = 2;      
        }
        else
        {
            damageInfo.font = fontDamageInfo3;
            damageInfo.color = c_red;        
            damageInfo.level = 3;
        }
    }
    hp -= damage;
    if(hp <= 0)
    {
        if(haveshoot==0)
        {
            hp = 1;
            haveshoot=1;
            alarm[3]=0;
            alarm[4]=0;
            alarm[5]=0;
            alarm[6]=0;
            alarm[7]=0;
            alarm[10]=0;
            alarm[11]=0;
            visible = 0;
            image_xscale = 2;
            image_yscale = 2;
            with(obj_firering_bullet)instance_destroy();
            with(obj_burning_fasf_fire_bullet)instance_destroy();
            with(obj_burning_fasf_af_fire)instance_destroy();
            with(obj_bullet_launcher)instance_destroy();
            with(obj_burning_fasf_eveleye)instance_destroy();
            with(obj_bfthunder)instance_destroy();
            with(obj_burning_fasf_black)instance_destroy();
            instance_create(0,0,obj_burningfasf_endurance);
        }
        else if(haveshoot==1 && created)
        {
            /*if(instance_exists(obj_burningfasf_sample))
            {
                with(other)instance_destroy();
                a=choose(sndCoin7,sndCoin6,sndCoin5,sndCoin4,sndCoin3,sndCoin2)
                sound_fix(a);
            }*/
            if(instance_exists(obj_burningfasf_sample))
            {
                hp = 1;
                instance_create(x+16,y+16,obj_bfHPBlock);
            }
            else
            {
                //audio_playsound(sndDeath);
                
            }
        
        }
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
    
    if(global.isAddMsg)
    {
        with(global.msgController)
        {
             msg = other.msg;
             event_user(0);   
        }
    }
}
with(other)
{
    hitEffect();
    instance_destroy();
}

/* */
/*  */
