if(status == 4)
{
    if(!global.achievements[27])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 27;
        global.achievements[27] = true;
    }
}

