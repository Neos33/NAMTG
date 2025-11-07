if(image_alpha < 1)
{
    image_alpha += 0.03
    alarm[7] = 1;
}
else
{   
    if(status != "pendingSword")
    {
        alarm[10] = 20;
    }
    else
    {
        status = "sword";
        swordDelay = 20;
        swordBoomCount += 1;
        swordIndex = irandom_range(0,7);
        swordStartAngle = irandom_range(0, 360);
    }
}

