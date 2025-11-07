if(isAch && global.playerHP == global.hp)
{
    if(!global.achievements[34])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 34;
        global.achievements[34] = true;
    }
}

