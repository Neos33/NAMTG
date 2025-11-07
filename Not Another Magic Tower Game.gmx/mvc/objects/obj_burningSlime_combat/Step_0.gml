if(trace)
{
    y = player.y;
}

if(statusCountDown > 0)
{
    statusCountDown -= 1;
}
else
{
    if(status == 1)
    {
        if(energyCount > 0)
        {
            energyCount -= 1;
            instance_create(random_range(64, 736),0,obj_bsEnergyElement);
            statusCountDown = 3;
        }
    }
    else if(status == 2)
    {
        if(point_distance(x,y,400,448) < 2)
        {
            x = 400;
            y = 448;
            hspeed = 0;
            vspeed = 0;
            with(obj_bsEnergyBall)
            {
                event_user(1);
            }
            status = 0;
        }
        else
        {
            move_towards_point(400,448,2);
        }
    }
    else if(status == 3)
    {
        if(point_distance(x,y,400,80) < 2)
        {
            x = 400;
            y = 80;
            hspeed = 0;
            vspeed = 0;
            status = 0;
            if(player_is_alive())
            {
                alarm[3] = 50;
            }
        }
        else
        {
            move_towards_point(400,80,2);
        }
    }
}

