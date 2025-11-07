if(!global.achievements[20])
{
    if(!instance_exists(obj_achievements))
    {
        ch = instance_create(0,608,obj_achievements);
        ch.index = 20;
        global.achievements[20] = 1;
    }
}

