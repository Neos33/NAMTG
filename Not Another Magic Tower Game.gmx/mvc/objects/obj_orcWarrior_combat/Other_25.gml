if(isAch)
{
    if(!global.achievements[26])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 26;
        global.achievements[26] = true;
    }
}

