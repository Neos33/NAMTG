if(abs(vspeed) > 0.1)
{
    if(!global.achievements[32])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 32;
        global.achievements[32] = true;
    }
}

