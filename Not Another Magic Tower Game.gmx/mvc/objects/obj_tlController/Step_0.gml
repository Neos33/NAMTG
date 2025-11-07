if(!player_is_alive()) exit;
time += 1;
if(currentStep == 54)
{
    if instance_exists(obj_tlOriginalTrigger)
    {
        var _is_triggered = obj_tlOriginalTrigger.triggered;
        if(!_is_triggered)
        {
            exit;
        }
    }
}
if(time >= step[currentStep])
{
    switch(currentStep)
    {
        case 0: alarm[0] = 1;break; //start bullets
        case 1: //explode1
             for(i=0;i<explodeAmmount1;i+=1)
             {
                b = instance_create(obj_demonLead_combat.x, obj_demonLead_combat.y, obj_tlDanmaku2);
                b.speed = explodeSpd1;
                b.ind = 1;
                b.direction = i*360/explodeAmmount1;
             }
             break;
        case 2: //explode2_1
            for(i=0;i<explodeAmmount2;i+=1)
             {
                b = instance_create(obj_demonLead_combat.x, obj_demonLead_combat.y, obj_tlDanmaku2);
                b.speed = explodeSpd2;
                b.ind = 2;
                b.sind = 1;
                b.direction = i*360/explodeAmmount2;
                b.alarm[3] = 10;
             }
             break;
        case 3: //explode2_2
            for(i=0;i<explodeAmmount2;i+=1)
             {
                b = instance_create(obj_demonLead_combat.x, obj_demonLead_combat.y, obj_tlDanmaku2);
                b.speed = explodeSpd2;
                b.ind = 2;
                b.sind = 2;
                b.direction = (i+0.5)*360/explodeAmmount2;
                b.alarm[3] = 10;
             }
             break;
        case 4: //explode2_3
            with(obj_tlDanmaku2)
            {
                if(ind == 2)
                {
                    speed = other.explodeSpd2;
                    direction = point_direction(x,y,obj_demonLead_combat.x,obj_demonLead_combat.y);
                    if(sind == 1)
                    {
                        alarm[5] = 1;
                    }
                    else
                    {
                        alarm[6] = 1;
                    }
                }
            }
            break;
        case 5: //explode3_1
            for(i=0;i<explodeAmmount2;i+=1)
             {
                b = instance_create(obj_demonLead_combat.x, obj_demonLead_combat.y, obj_tlDanmaku2);
                b.speed = explodeSpd2;
                b.ind = 3;
                b.sind = 1;
                b.direction = i*360/explodeAmmount2;
                b.alarm[3] = 10;
                b.alarm[4] = 1;
             }
             break;
        case 6: //explode3_2
            for(i=0;i<explodeAmmount2;i+=1)
             {
                b = instance_create(obj_demonLead_combat.x, obj_demonLead_combat.y, obj_tlDanmaku2);
                b.speed = explodeSpd2;
                b.ind = 3;
                b.sind = 2;
                b.direction = (i+0.5)*360/explodeAmmount2;
                b.alarm[3] = 10;
                b.alarm[4] = 1;
             }
             break;
        case 7: //explode3_3
            with(obj_tlDanmaku2)
            {
                if(ind == 3)
                {
                    if(sind == 1)
                    {
                        hspeed = -hspd;
                        vspeed = vspd;
                    }
                    else
                    {
                        hspeed = hspd;
                        vspeed = -vspd;                   
                    }
                }
            }
            break;
        case 8: //explode4_1
            for(i=0;i<explodeAmmount2;i+=1)
             {
                b = instance_create(obj_demonLead_combat.x, obj_demonLead_combat.y, obj_tlDanmaku2);
                b.speed = explodeSpd2;
                b.ind = 4;
                b.sind = 1;
                b.direction = i*360/explodeAmmount2;
                b.alarm[3] = 10;
                b.alarm[4] = 1;
             }
             break;
        case 9: //explode4_2
            for(i=0;i<explodeAmmount2;i+=1)
             {
                b = instance_create(obj_demonLead_combat.x, obj_demonLead_combat.y, obj_tlDanmaku2);
                b.speed = explodeSpd2;
                b.ind = 4;
                b.sind = 2;
                b.direction = i*360/explodeAmmount2;
                b.alarm[3] = 10;
                b.alarm[4] = 1;
             }
             break;
        case 10: //explode4_3
            with(obj_tlDanmaku2)
            {
                if(ind == 4)
                {
                    if(sind == 1)
                    {
                        hspeed = -hspd;
                        vspeed = vspd;
                    }
                    else
                    {
                        hspeed = hspd;
                        vspeed = -vspd;                   
                    }
                    direction += 90;
                }
            }
            break;
        case 11: //fireball
            alarm[0] = 0;
            instance_create(128,-32,obj_tlStartFireParticle);
            instance_create(672,-32,obj_tlStartFireParticle);
            with(obj_tlPlatform1)
            {
                alarm[0] = 1;
            }
            with(obj_tlPillar)
            {
                alarm[0] = 1;
            }
            obj_tlBlinkBlack.alarm[2] = 1;
            break;
        case 12: //burst beam
            obj_tlStartFireParticle.alarm[4] = 1;
            break;
        case 13: //white flash1
            instance_create(0,0,obj_tlWhiteBlink);
            with(obj_tlStartFireParticle)
            {
                alarm[3] = 0;
            }
            break;
        case 14: //white flash2
            instance_create(0,0,obj_tlWhiteBlink);
            break;
        case 15: //white flash3
            instance_create(0,0,obj_tlWhiteBlink);
            with(obj_tlStartFireParticle)
            {
                alarm[4] = 0;
            }
            break;
        case 16: //white flash4
            instance_create(0,0,obj_tlWhiteBlink);
            with(obj_tlPlatform1)
            {
                image_blend = make_color_rgb(255,96,0);
            }
            with(obj_tlPillar)
            {
                image_blend = make_color_rgb(255,96,0);
            }
            break;
        case 17:
            part_particles_clear(part1);
            part_particles_clear(beam);
            __background_set( e__BG.Blend, 0, make_color_rgb(255,128,0) );
            with(obj_tlBlinkBlack)
            {
                minAlpha = -0.1;
                maxAlpha = 0.3;
                //alarm[3] = 1;
                //alarm[0] = 0;
                //alarm[1] = 0;
            }
            with(obj_tlStartFireParticle)
            {
                instance_destroy();
            } 
            with(obj_tlWater1)
            {
                alarm[3] = 1;
            }
            instance_create(0,0,obj_tlBGFireController);
            break;
        case 18:
            instance_create(0,0,obj_tlBombController);
            break;
        case 19:
            with(obj_tlBombController)
            {
                instance_destroy();
            }
            f1 = instance_create(32,32,obj_tlSuperFasf);
            f1.ind = 1;
            f1.sprite_index = spr_dlFasf;
            f2 = instance_create(768,32,obj_tlSuperFasf);
            f2.ind = -1;
            break;
        case 20:
            with(obj_tlSuperFasf)
            {
                phase = 2;
                alarm[5] = 1;
            }
            break;
        case 21: 
            obj_demonLead_combat.alarm[3] = 1;
            instance_create(400,240,obj_tlStartDarkHole);
            //audio_playmusic_volume(scrAudioGetID("SE_HeedMyCall"));
            FMODSoundPlay(scrAudioGetID("SE_HeedMyCall"), false);
            break;
        case 22:
            instance_create(0,0,obj_tlWhiteBlink);
            instance_create(player.x, player.y, obj_tlAbsorbedKid);
            player.x = 400;
            player.y = 304;
            player.frozen = true;
            player.visible = false;
            bow.visible = false;
            break;
        case 23:
            p = instance_create(0,0,obj_tlBlackFadeOut);
            p.time = 50;
            break;
        case 24:
            room_goto(rDemonLeadMonsters);
            break;
        case 25:
            instance_create(592,272,obj_tlSmallSlime);
            break;
        case 26:
            instance_create(400,160,obj_tlRedSlime);
            break;
        case 27:
            p =instance_create(256,208,obj_tlBlackSlime);
            p.sound = true;
            instance_create(544,208,obj_tlBlackSlime); 
            break;
        case 28:
            instance_create(400,128,obj_tlSlimeKing);
            break;
        case 29:
            instance_create(400 + sign(400 - player.x)*192,368,obj_tlSkeleton);
            break;
        case 30:
            obj_tlSkeleton.alarm[4] = 1;
            break;
        case 31:
            obj_tlSkeletonSwordsman.start = true;
            with(obj_tlSkeletonSwordTrace)
            {
                status = 2;
                spd = point_distance(x,y,obj_tlSkeletonSwordsman.x,obj_tlSkeletonSwordsman.y)/80;
                if(spd < 3)
                {
                    spd = 3;
                }
            }
            with(obj_tlSkeletonBone)
            {
                gravity = 0;
                bounce = false;
                tx = obj_tlSkeletonSwordsman.x;
                ty = obj_tlSkeletonSwordsman.y + 16;
                dis = point_distance(x,y,tx,ty);
                spd = dis/80;
                if(spd < 3)
                {
                    spd = 3;
                }
                alarm[3] = 1;
            }
            obj_tlSkeletonSwordTrace.status = 2;
            break;
        case 32:
            with(instance_create(208,368,obj_tlGuardLv2))
            {
                blastX = 376;
                sound = true;
            }
            with(instance_create(592,368,obj_tlGuardLv2))
            {
                blastX = 424;
            }
            break;
        case 33:
            with(block)
            {
                if(sp == 1)
                {
                    image_yscale = 1;
                }
            }
            with(instance_create(224,368,obj_tlGuardLv1))
            {
                type = 0;
                alarm[7] = 50;
            }
            break;
        case 34:
            with(instance_create(192,512,obj_tlMage))
            {
                type = 0;
            }
            with(instance_create(608,512,obj_tlMage))
            {
                type = 1;
                sprite_index = spr_mage2Battle;
            }
            break;
        case 35:
            with(instance_create(220,128,obj_tlMagician))
            {
                type = 1;
            }
            with(instance_create(580,128,obj_tlMagician))
            {
                type = -1;
                sprite_index = spr_magician2Battle;
            }
            break;
        case 36:
            with(instance_create(224,368,obj_tlDiaoSlime))
            {
                ind = -1;
                image_xscale = -1;
                alarm[11] = 100;
            }
            with(instance_create(576,368,obj_tlDiaoSlime))
            {
                ind = 1;
            }
            break;
        case 37:
            tempSign = sign(400 - player.x);
            instance_create(400 + 192 * tempSign, 368, obj_tlYellowKnight);
            break;
        case 38:
            p1 = instance_create(400 - 192 * tempSign, 368, obj_tlOrcMage);
            break;
        case 39:
            p1 = instance_create(400 + 192 * tempSign, 368, obj_tlBlueKnight);
            p1.image_xscale = tempSign;
            break;
        case 40:
            instance_create(player.x - (32 - 18) * tempSign, player.y - 23 + 16 - 18, obj_tlOrcSwordsmanDashShadow);
            break;
        case 41:
            instance_create(400 - 192 * tempSign, 368, obj_tlOrcWarrior);
            break;
        case 42:
            instance_create(400, 128, obj_tlRedBat);
            break;
        case 43: 
            instance_create(400, 160, obj_tlBat);
            break;
        case 44:
            instance_create(400 + 192 * sign(400 - player.x), 192, obj_tlSmallBat);
            break;
        case 45: 
            instance_create(0,0,obj_tlWhiteBlink);
            break;
        case 46: 
            instance_create(0,0,obj_tlWhiteBlink);
            break;
        case 47: 
            instance_create(0,0,obj_tlWhiteBlink);
            break;
        case 48: 
            instance_create(0,0,obj_tlWhiteBlink);
            break;
        case 49:
            blackOut = instance_create(400,304,obj_tlRngBlackOut);
            blackOut.alarm[0] = 16;
            blackOut.roomTo = ds_list_find_value(rngRoomList,0);
            break;
        case 50:
            blackOut = instance_create(400,304,obj_tlRngBlackOut);
            blackOut.alarm[0] = 16;
            blackOut.roomTo = ds_list_find_value(rngRoomList,1);
            break;
        case 51:
            blackOut = instance_create(400,304,obj_tlRngBlackOut);
            blackOut.alarm[0] = 16;
            blackOut.roomTo = ds_list_find_value(rngRoomList,2);
            break;
        case 52:
            blackOut = instance_create(400,304,obj_tlRngBlackOut);
            blackOut.alarm[0] = 16;
            blackOut.roomTo = ds_list_find_value(rngRoomList,3);
            break;
        case 53:
            blackOut = instance_create(400,304,obj_tlRngBlackOut);
            blackOut.alarm[0] = 16;
            blackOut.roomTo = rDemonLeadOrininal;
            break;
        case 54:
            room_goto(rDemonLeadTouhou);
            break;
            
    }
    currentStep += 1;
    currentStep = min(currentStep, 55);
}

/*if(time == 5400)
{
    pos = SS_GetSoundPosition(global.BGM_DemonLead);
    SS_PauseSound(global.BGM_DemonLead);
    show_message(pos);
    audio_resumemusic_volume(scrAudioGetID("BGM_DemonLead"));
}

/* */
/*  */
