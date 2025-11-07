if(instance_number(obj_dwBombWall) == 0)
{
    if(!global.achievements[87])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 87;
        global.achievements[87] = 1;
    }
}

