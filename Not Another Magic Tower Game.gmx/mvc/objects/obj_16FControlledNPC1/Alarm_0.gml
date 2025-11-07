if(point_distance(x,y,targetX,targetY < 4))
{
    x = targetX;
    y = targetY;
    hspeed = 0;
    vspeed = 0;
}
else
{
    move_towards_point(targetX,targetY,4);
}

