if(ach && player_is_alive())
{
    if(!global.achievements[49])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 49;
        global.achievements[49] = true;
    }
}

