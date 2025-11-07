if(point_distance(b.x, b.y, b.targetX, b.targetY) < 3)
{
    b.hspeed = 0;
    b.vspeed = 0;
    b.x = b.targetX;
    b.y = b.targetY;
    alarm[7] = 1;
}
else
{
    with(b)
    {
        move_towards_point(targetX, targetY, 3);
    }
    alarm[6] = 1;
}

