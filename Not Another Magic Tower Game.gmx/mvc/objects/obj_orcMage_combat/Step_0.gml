if(status == "sword")
{
    if(swordDelay > 0)
    {
        swordDelay -= 1;
        if(swordDelay == 0)
        {
            swordCenterX = player.x;
            swordCenterY = player.y;
        }
    }
    else
    {
        sword = instance_create(swordCenterX + 150 * cos(degtorad(swordStartAngle + 11 * swordCount)), swordCenterY - 150 * sin(degtorad(swordStartAngle + 11 * swordCount)), obj_orcMageSword);
        sword.image_index = swordIndex;
        sword.targetX = swordCenterX;
        sword.targetY = swordCenterY;
        sword.image_angle = point_direction(sword.x,sword.y,swordCenterX,swordCenterY) - 90;
        if(swordCount mod 3 == 0)
        {
            audio_playsound(sndShoot);
        }
        if(swordCount < 24)
        {
            swordCount += 1;
        }
        else
        {
            with(obj_orcMageSword)
            {
                alarm[3] = 1;
            }
            swordCount = 0;
            status = "boom";
            bombDelay = 37;
        }
    }
}

if(status == "boom")
{
    if(bombDelay > 0)
    {
        bombDelay -= 1;
    }
    else
    {
        instance_create(swordCenterX,swordCenterY,obj_orcMageExplosion);
        audio_playsound(sndfasfboom);

        if(swordBoomCount < 3)
        {
            status = "pendingSword";
        }
        else
        {
            swordBoomCount = 0;
            status = "init";
        }
        alarm[6] = 1;
    }
}

