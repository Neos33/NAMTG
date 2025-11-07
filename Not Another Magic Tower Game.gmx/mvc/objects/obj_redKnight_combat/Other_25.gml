if(obj_redKnightController.coinGet >= 233)
{
    if(!global.achievements[66])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 66;
        global.achievements[66] = 1;
    }
}

