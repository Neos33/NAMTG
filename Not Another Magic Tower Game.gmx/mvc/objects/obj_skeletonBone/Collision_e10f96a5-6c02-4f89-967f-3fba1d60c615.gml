event_inherited();
if(crotch && !player_is_alive())
{
    if(!global.achievements[33])
    {
        var ch = instance_create(0,608,obj_achievements);
        ch.index = 33;
        global.achievements[33] = true;
    }
}

