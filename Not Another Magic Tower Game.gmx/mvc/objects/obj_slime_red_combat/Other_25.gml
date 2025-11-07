if(global.playerHP == global.hp)
{
    if(!global.achievements[22])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 22;
        global.achievements[22] = true;
    }
}

