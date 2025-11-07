if(forAch)
{
    if(!global.achievements[83])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 83;
        global.achievements[83] = true;
    }
}

