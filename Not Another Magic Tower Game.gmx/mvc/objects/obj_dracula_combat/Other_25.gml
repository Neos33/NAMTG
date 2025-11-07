if(clawHitCount >= 3)
{
    if(!global.achievements[67])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 67;
        global.achievements[67] = true;
    }
}

