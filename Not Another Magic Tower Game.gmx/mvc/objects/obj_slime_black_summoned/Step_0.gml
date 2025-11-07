if(status == 1)
{
    if(point_distance(x, y, targetX , targetY) <= 5)
    {
        x=targetX;
        y=targetY;
        hspeed = 0;
        vspeed = 0;
        alarm[3] = 20;
        status = 2;
    }
    else
    {
        move_towards_point(targetX, targetY, 5);
    }
}

