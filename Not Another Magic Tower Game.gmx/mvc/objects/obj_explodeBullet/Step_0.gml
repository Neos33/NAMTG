if(spd > 0)
{
    dis = point_distance(targetX, targetY, x, y);
    if(dis > spd)
    {
        move_towards_point(targetX, targetY, spd);
    }
    else
    {
        spd = 0;
    }
}

