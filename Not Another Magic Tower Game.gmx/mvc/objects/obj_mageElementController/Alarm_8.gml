with(obj_magelv2_combat)
{
    if(point_distance(x,y,400,304) < 3)
    {
        x = 400;
        y = 304;
        hspeed = 0;
        vspeed = 0;
    }
    else
    {
        move_towards_point(400, 304, 3);
        obj_mageElementController.alarm[8] = 1;
    }
}

