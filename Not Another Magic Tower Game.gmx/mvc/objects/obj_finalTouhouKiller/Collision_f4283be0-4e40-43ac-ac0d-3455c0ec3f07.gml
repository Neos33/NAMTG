if(visible && image_alpha >= 0.5)
{
    if(!global.cooldown && !global.godmod)
    {   
        sndMagic = false;
        var dmg, tempDmp;
        //hit = true;
        if(global.defenseDamage < 1)
        {
            global.defenseDamage = 1;
        }
        if(!global.Blockable)
        {
            if(global.monsterSuperCritical)
            {
                dmg = round(global.defenseDamage * 2.25);
                if(global.GalleryBossFight)
                {
                    global.GalleryBossFightHp -= dmg;
                }
                else
                {
                    if(!global.inGallery)
                    {
                        if(global.SaintShield)
                        {
                            tempDmp = ceil(dmg/2);
                            dmg = tempDmp;
                        }   
                        if(global.MagicCloak && global.MagicHP > 0)
                        {                    
                            if(global.MagicHP >= dmg)
                            {
                                sndMagic = true;
                                global.MagicHP -= dmg;
                                dmg = 0;
                            }
                            else
                            {
                                dmg -= global.MagicHP;
                                global.MagicHP = 0;
                            }
                        }
                    }
                    global.hp -= dmg;
                }
                if(global.isAddMsg)
                {
                    msg = "The monster did a critical hit! Kid got " + string(dmg) + " damage.";
                }
                global.monsterSuperCritical = false;
            }
            else if(global.monsterCritical)
            {
                dmg = round(global.defenseDamage * 1.5);
                if(global.GalleryBossFight)
                {
                    global.GalleryBossFightHp -= dmg;
                }
                else
                {
                    if(!global.inGallery)
                    {
                        if(global.SaintShield)
                        {
                            tempDmp = ceil(dmg/2);
                            dmg = tempDmp;
                        }   
                        if(global.MagicCloak && global.MagicHP > 0)
                        {                    
                            if(global.MagicHP >= dmg)
                            {
                                sndMagic = true;
                                global.MagicHP -= dmg;
                                dmg = 0;
                            }
                            else
                            {
                                dmg -= global.MagicHP;
                                global.MagicHP = 0;
                            }
                        }
                    }
                    global.hp -= dmg;
                }
                if(global.isAddMsg)
                {
                    msg = "The monster did a critical hit! Kid got " + string(dmg) + " damage.";
                }
                global.monsterCritical = false;
            }
            else
            {
                dmg = global.defenseDamage;
                if(global.GalleryBossFight)
                {
                    global.GalleryBossFightHp -= global.defenseDamage;
                }
                else
                {
                    if(!global.inGallery)
                    {
                        if(global.SaintShield)
                        {
                            tempDmp = ceil(dmg/2);
                            dmg = tempDmp;
                        }   
                        if(global.MagicCloak && global.MagicHP > 0)
                        {                    
                            if(global.MagicHP >= dmg)
                            {
                                sndMagic = true;
                                global.MagicHP -= dmg;
                                dmg = 0;
                            }
                            else
                            {
                                dmg -= global.MagicHP;
                                global.MagicHP = 0;
                            }
                        }
                    }
                    global.hp -= dmg;
                }
                if(global.isAddMsg)
                {
                    msg = "Kid got " + string(dmg) + " damage.";
                }
            }  
            with(obj_finalPlane)
            {
                var damageInfo = instance_create(x + (sprite_width / 2 - sprite_xoffset) * image_xscale,y + (sprite_height / 2 - sprite_yoffset) * image_yscale,obj_damageInfo);
                damageInfo.damage = other.dmg;
                
                if(global.monsterSuperCritical)
                {
                    //damageInfo.damage = round(global.defenseDamage * 2.25);
                    damageInfo.font = fontDamageInfo3;
                    damageInfo.color = c_red;        
                    damageInfo.level = 3;
                }
                else if(global.monsterCritical)
                {
                    //damageInfo.damage = round(global.defenseDamage * 1.5);
                    damageInfo.font = fontDamageInfo2;
                    damageInfo.color = c_yellow;        
                    damageInfo.level = 2;
                }
                else
                {
                    //damageInfo.damage = global.defenseDamage;
                    damageInfo.font = fontDamageInfo1;
                    damageInfo.color = c_white;        
                    damageInfo.level = 1;
                }
            }
        }
        if(global.hp <= 0 && !global.GalleryBossFight)
        {
            if(global.isAddMsg)
            {
                msg += " Kid died.";
            }
            with(obj_finalPlane)
            {
                killPlayer();
                instance_destroy();
            }
        }
        else if(global.GalleryBossFight && global.GalleryBossFightHp <= 0)
        {
            if(global.isAddMsg)
            {
                msg += " Kid died.";
            }
            with(obj_finalPlane)
            {
                killPlayer();
                instance_destroy();
            }
        }
        else
        {
            global.cooldown = true;
            if(global.Blockable)
            {
                if(global.isAddMsg)
                {
                    msg = "Kid block the damage.";
                }
                global.Blockable = false;
                sound_fix(sndgras);
                var p = instance_create(obj_finalPlane.x, obj_finalPlane.y, obj_blockBubble);
                p.target = obj_finalPlane;
                global.monsterCritical = false;
                global.monsterSuperCritical = false;
                /*if(object_index != global.combatObj && !isStable)
                {                
                    instance_destroy();
                }*/
            }
            else
            {
                if(sndMagic)
                {
                    sound_fix(sndWind2);
                    with(instance_create(x,y,obj_magicBlock))
                    {
                        target = obj_finalPlane;
                    }
                }
                else
                {
                    sound_fix(sndKidHit);
                    obj_playerHitController.alarm[8] = 1;
                }
            }    
            obj_playerHitController.alarm[9] = 50;
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
}

/* */
/*  */
