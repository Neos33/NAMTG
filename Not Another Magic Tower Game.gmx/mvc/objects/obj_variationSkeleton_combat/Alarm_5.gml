if(time > 0)
{
    if(laserStatus == 1)
    {
        drawLaser = 1;
    }
    else if(laserStatus == 2)
    {
        drawLaser = 2;
    }
    else if(laserStatus == 3)
    {
        drawLaser = 3;
    }
    time -= 1;
    alarm[5] = 1;
}
else
{
    if(laserDir == 1)
    {
        var laser1 = instance_create(x - 12, y + 4, obj_vsDarkLaser);
        laser1.left = true;
        laser1.targetX = 500;
        laser1.endX = 16;
    }
    else if(laserDir == 2)
    {
        var laser2 = instance_create(x + 12, y + 4, obj_vsDarkLaser);
        laser2.left = false;
        laser2.targetX = 300;
        laser2.endX = 784;
    }
    else if(laserDir == 3)
    {
        var laser1 = instance_create(x - 12, y + 4, obj_vsDarkLaser);
        laser1.left = true;
        laser1.targetX = 500;
        laser1.endX = 16;
        laser2 = instance_create(x + 12, y + 4, obj_vsDarkLaser);
        laser2.left = false;
        laser2.targetX = 300;
        laser2.endX = 784;
    }
}

