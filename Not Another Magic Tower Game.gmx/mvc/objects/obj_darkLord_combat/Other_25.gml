if(obj_tdController.special)
{
    if(!global.achievements[88])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 88;
        global.achievements[88] = 1;
    }
}

