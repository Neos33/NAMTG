if(redColCount >= 3)
{
    if(!global.achievements[48])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 48;
        global.achievements[48] = true;
    }
}

