if(y <= 350)
{
    if(!global.achievements[44])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 44;
        global.achievements[44] = true;
    }
}

