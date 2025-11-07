if(global.playerHP == global.hp)
{
    if(!global.achievements[23])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 23;
        global.achievements[23] = true;
    }
}

