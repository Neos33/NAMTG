if(!global.achievements[57])
{
    if(!instance_exists(obj_achievements))
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 57;
        global.achievements[57] = 1;
    }
    else
    {
        alarm[3] = 1;
    }
}

