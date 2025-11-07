trg = 0;
targetX = 0;
targetY = 0;
spd = 0;

image_speed = 1/8;

if(trg >= 18 && trg <= 22)
{
    if(global.specialTrigger[trg - 18])
    {
        instance_destroy();
    }
}

