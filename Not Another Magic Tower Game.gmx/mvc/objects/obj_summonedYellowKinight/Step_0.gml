if(phase == "dash")
{
    if(point_distance(x,y,targetX,targetY) < spd)
    {
        hspeed = 0;
        vspeed = 0;
        sprite_index = spr_yellowKnight;
        hit = instance_create(x + 2, y + 16, obj_swordhit);
        hit.image_xscale = -1;
        phase = "init";
        if(dCount < 3)
        {
            alarm[3] = 20;
        }
        else
        {
            alarm[4] = 20;
        }
    }
    else
    {
        move_towards_point(targetX, targetY, spd);
    }
}


if(phase == "magic")
{
    mTime +=1;
    if(mTime mod 2 == 0)
    {
        audio_playsound(sndShoot);
    }
    instance_create(x + 16,y + 16, obj_yellowKnightBullet1);        
    if(point_distance(x, y, targetX, targetY) < spd)
    {
        hspeed = 0;
        vspeed = 0;
        if(mCount < num)
        {
            mCount += 1;
            fAngle += 2* angle;
            targetX = centerX + 150 * cos(degtorad(fAngle)) - 16;
            targetY = centerY - 150 * sin(degtorad(fAngle)) - 16;
        }
        else
        {
            x = 400 - 16;
            y = 304 - 16;;
            phase = "init";
            alarm[6] = 10;
        }
    }
    else
    {
        move_towards_point(targetX, targetY, spd);
    }
}

if(phase == "combo")
{
    if(cPhase == 1)
    {
        if(cCount1 < 10)
        {
            audio_playsound(sndShoot);
            combo1[cCount1] = instance_create(x - 15, y - 20 + cCount1 * 4, obj_yellowKnightBullet1);
            cCount1 += 1;
        }
        else
        {
            cPhase = 0;
            cCount1 = 0;
            alarm[10] = 20;
        }
    }
    else if(cPhase == 2)
    {
        if(cCount2 < 200)
        {
            if(cCount2 mod 2 == 0)
            {
                audio_playsound(sndShoot);
                var c2_1 = instance_create(x - 15, y + 50 - 24 +  abs(5 - ((cCount2 / 2) mod 10)) * 8, obj_yellowKnightBullet2);
                var c2_2 = instance_create(x - 15, y - 46 - 24 - abs(5 - ((cCount2 / 2) mod 10)) * 8, obj_yellowKnightBullet2);
                c2_1.hspeed = -8;
                c2_2.hspeed = -8;
            }
            cCount2 += 1;
        }
        else
        {
            cPhase = 4;
            backupPhase = 3;
            cInterval = 50;
            cTime = 0;
        }
    }
    else if(cPhase == 3)
    {
        if(cCount3 < 200)
        {
            if(cCount2 mod 2 == 0)
            {
                audio_playsound(sndShoot);
                var c3_1 = instance_create(x - 15, y + 28, obj_yellowKnightBullet3);
                var c3_2 = instance_create(x - 15, y - 24, obj_yellowKnightBullet3);
                c3_1.type = 0;
                c3_2.type = 1;
                c3_1.vspeed = -5.25;
                c3_2.vspeed = 5.25;
                c3_1.hspeed = -5;
                c3_2.hspeed = -5;
            }           
        }
        else if(cCount3 == 250)
        {
            alarm[11] = 30;
        }
        cCount3 += 1;
    }
    else if(cPhase == 4)
    {
        if(cTime < cInterval)
        {
            cTime += 1;
        }       
        else
        {
            cPhase = backupPhase;
            hit = instance_create(x + 2, y + 16, obj_swordhit);
            hit.image_xscale = -1;
            audio_playsound(sndSkill1);
        }
    }
}

if(!instance_exists(obj_diaoSlime_combat))
{
    instance_destroy();
    exit;
}

hp = obj_diaoSlime_combat.hp;
image_alpha = obj_diaoSlime_combat.image_alpha;


