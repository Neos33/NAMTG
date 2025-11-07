if(ach)
{
    if(!global.achievements[72])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 72;
        global.achievements[72] = 1;
    }
}

