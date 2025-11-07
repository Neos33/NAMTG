if(isAch)
{
    if(!global.achievements[75])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 75;
        global.achievements[75] = true;
    }
}

