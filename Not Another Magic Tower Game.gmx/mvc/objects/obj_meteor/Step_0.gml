if(point_distance(400, 304+ 20, x,y) < 7)
{
    hspeed = 0;
    vspeed = 0;
    alarm[0] = 1;
}
else
{
    move_towards_point(400, 304+ 20, 7);
}

