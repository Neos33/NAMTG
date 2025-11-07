var __b__;
__b__ = action_if(global.player_alive);
if !__b__
{
{
mask_index = sprEmpty;

exit;
}
}
script_execute(playerMove,0,0,0,0,0);
script_execute(playerWallJump,0,0,0,0,0);
script_execute(playerOther,0,0,0,0,0);

if(injuredInterval > 0)
{
    injuredInterval -= 1;   
}
if(!global.special[4])
{
    if(place_meeting(x,y,obj_lavaarea))
    {
        if(injuredInterval == 0)
        {
            audio_playsound(sndDeath);
            lavaDamage = irandom_range(1,4);
            damageInfo = instance_create(x, y, obj_damageInfo);
            damageInfo.color = c_silver;
            damageInfo.font = fontDamageInfo1;
            damageInfo.damage = lavaDamage;
            damageInfo.level = 1;
            injuredInterval = 3;        
            if(lavaDamage < global.hp)
            {
                global.hp -= lavaDamage;
            }
            else
            {
                global.hp = 0;
                killPlayer();
            }
        }
    }
}

if(place_meeting(x,y,obj_fireWater1))
{
    if(injuredInterval == 0)
    {
        audio_playsound(sndDeath);
        lavaDamage = irandom_range(1,4);
        damageInfo = instance_create(x, y, obj_damageInfo);
        damageInfo.color = c_silver;
        damageInfo.font = fontDamageInfo1;
        damageInfo.damage = lavaDamage;
        damageInfo.level = 1;
        injuredInterval = 3;        
        if(global.GalleryBossFight)
        {
            if(lavaDamage < global.GalleryBossFightHp)
            {
                global.GalleryBossFightHp -= lavaDamage;
            }
            else
            {
                global.GalleryBossFightHp = 0;
                killPlayer();
            }
        }
        else
        {
            if(lavaDamage < global.hp)
            {
                global.hp -= lavaDamage;
            }
            else
            {
                global.hp = 0;
                killPlayer();
            }
        }   
    }
}


if(place_meeting(x,y,obj_dmWater1))
{
    if(injuredInterval == 0 && obj_dmWaterController.current == 0)
    {
        audio_playsound(sndDeath);
        lavaDamage = irandom_range(1,4);
        damageInfo = instance_create(x, y, obj_damageInfo);
        damageInfo.color = c_silver;
        damageInfo.font = fontDamageInfo1;
        damageInfo.damage = lavaDamage;
        damageInfo.level = 1;
        injuredInterval = 3;        
        if(global.GalleryBossFight)
        {
            if(lavaDamage < global.GalleryBossFightHp)
            {
                global.GalleryBossFightHp -= lavaDamage;
            }
            else
            {
                global.GalleryBossFightHp = 0;
                killPlayer();
            }
        }
        else
        {
            if(lavaDamage < global.hp)
            {
                global.hp -= lavaDamage;
            }
            else
            {
                global.hp = 0;
                killPlayer();
            }
        }   
    }
}


if(room == rFinalCorridor)
{
    obj_draw_player.x = x;
    obj_draw_player.y = y;
}

