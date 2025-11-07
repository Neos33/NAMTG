if(x < 500 && y < 400)
{
    if(!global.achievements[43])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 43;
        global.achievements[43] = true;
    }
}

