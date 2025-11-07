if(instance_number(obj_dizzy) > 0)
{
    if(!global.achievements[29])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 29;
        global.achievements[29] = true;
    }
}

