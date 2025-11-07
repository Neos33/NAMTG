if(y > 400)
{
    if(!global.achievements[74])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 74
        global.achievements[74] = true;
    }
}

