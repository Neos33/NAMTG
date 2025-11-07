if(shoot)
{
    if(!global.achievements[38])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 38;
        global.achievements[38] = true;
    }
}

