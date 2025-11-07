if(global.playerHP == global.hp)
{
    if(!global.achievements[76])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 76;
        global.achievements[76] = true;
    }
}

