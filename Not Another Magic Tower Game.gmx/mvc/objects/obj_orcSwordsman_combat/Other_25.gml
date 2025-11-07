if(prepareToHit)
{
    if(!global.achievements[30])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 30;
        global.achievements[30] = true;
    }
}

