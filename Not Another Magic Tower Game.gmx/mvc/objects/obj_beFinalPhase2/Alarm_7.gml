if(point_distance(x,y,200, 250) < 8)
{
    move_towards_point(200, 250, 8);
    alarm[7] = 1;
}
else
{
    hspeed = 0;
    vspeed = 0;
    x = 200;
    y = 250;
}

