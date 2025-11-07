if(start)
{
    with(player)
    {
        x -= 5;
        sprite_index = sprPlayerRunning;
        image_xscale = -1;
    }
    hspeed = -10;
    if(!player_is_alive())
    {
        hspeed = 0;
        start = false;
        if(!global.achievements[96])
        {
            if(!instance_exists(obj_achievements))
            {
                ch = instance_create(0,608,obj_achievements);
                ch.index = 96;
                global.achievements[96] = 1;
            }
        }
        alarm[3] = 10;
    }
    alarm[2] = 1; 
}

