if(x < 500 && y < 400)
{
    if(!global.achievements[41])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 41;
        global.achievements[41] = true;
    }
}

