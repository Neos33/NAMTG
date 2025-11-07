if(global.playerHP == global.hp)
{
    if(!global.achievements[37])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 37;
        global.achievements[37] = true;
    }
}

