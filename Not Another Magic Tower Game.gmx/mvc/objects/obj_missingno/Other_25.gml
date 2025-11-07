if(viewShift == 2)
{
    if(!global.achievements[71])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 71;
        global.achievements[71] = 1;
    }
}

