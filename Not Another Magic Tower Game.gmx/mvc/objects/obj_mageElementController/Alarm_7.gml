with(obj_magelv2_combat)
{
    if(point_distance(x,y,400,480) < 3)
    {
        x = 400;
        y = 480;
        hspeed = 0;
        vspeed = 0;
    }
    else
    {
        move_towards_point(400, 480, 3);
        obj_mageElementController.alarm[7] = 1;
    }
}

