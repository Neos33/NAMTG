if(hugeboneCount >= 3)
{
    if(!global.achievements[39])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 39;
        global.achievements[39] = true;
    }
}

