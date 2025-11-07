if(!global.specialBlock[14])
{
    if(laserReady)
    {
        laser = instance_create(x + 16, y + 16, obj_ultimateEnergyLaser);
        laser.startX = x + 16;
        laser.startY = y + 16;
        laser.color = c_white;
        laser.targetX = 400;
        laser.targetY = 304;
        alarm[2] = 100;
    }
}

