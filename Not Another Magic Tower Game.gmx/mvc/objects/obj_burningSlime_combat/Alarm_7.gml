if(point_distance(x,y,x,player.y) < 3)
{
    y = player.y;
    vspeed = 0;
    trace = true;
}
else
{
    move_towards_point(x,player.y,3);
    alarm[7] = 1;
}

