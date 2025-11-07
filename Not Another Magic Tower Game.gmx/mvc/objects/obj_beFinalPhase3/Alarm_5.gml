if(point_distance(x,y,400, 250) < 8)
{
    move_towards_point(400, 250, 8);
    alarm[5] = 1;
}
else
{
    hspeed = 0;
    vspeed = 0;
    x = 400;
    y = 250;
}

