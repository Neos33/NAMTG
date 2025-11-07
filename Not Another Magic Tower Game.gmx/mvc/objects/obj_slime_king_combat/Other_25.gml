if(status == 7)
{
    if(!global.achievements[24])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 24;
        global.achievements[24] = true;
    }
}

