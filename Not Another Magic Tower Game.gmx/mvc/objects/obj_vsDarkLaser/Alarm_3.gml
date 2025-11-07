if(left)
{
    if(targetX > endX)
    {
        targetX -= 12;
        moveCount += 1;
        alarm[3] = 1;
    }
    else
    {
        isEnd = true;
    }

}
else
{
    if(targetX < endX)
    {
        targetX += 12;
        moveCount += 1;
        alarm[3] = 1;
    }
    else
    {
        isEnd = true;
    }
}

    if(isEnd)
    {
        if(obj_variationSkeleton_combat.laserStatus < 4)
        {
            obj_variationSkeleton_combat.laserStatus += 1;
            obj_variationSkeleton_combat.alarm[5] = 50;
            obj_variationSkeleton_combat.laserDir += 1;
            obj_variationSkeleton_combat.time = 10;
        }
        else
        {
            obj_variationSkeleton_combat.laserStatus = 0;
            obj_variationSkeleton_combat.laserDir = 0;
            obj_variationSkeleton_combat.time = 300;
            obj_variationSkeleton_combat.alarm[6] = 70;
        }
        obj_variationSkeleton_combat.drawLaser = 0;
        alarm[4] = 1;
    }

if((moveCount mod 2) == 0 && !isEnd)
{
    instance_create(targetX, targetY, obj_vsExplosionCreator);
}

