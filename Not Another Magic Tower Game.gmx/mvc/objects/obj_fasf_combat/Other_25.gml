if(global.attack <= 18)
{
    if(!global.achievements[31])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 31;
        global.achievements[31] = true;
    }
}

