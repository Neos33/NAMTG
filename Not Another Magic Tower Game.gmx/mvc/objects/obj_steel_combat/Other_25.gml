if(dizzyTimes >= 10)
{
    if(!global.achievements[36])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 36;
        global.achievements[36] = true;
    }
}

