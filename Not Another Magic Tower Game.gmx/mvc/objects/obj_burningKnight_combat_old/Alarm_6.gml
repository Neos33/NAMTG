if(point_distance(x,y,targetX,targetY) < 3)
{
    x = targetX;
    y = targetY;
    hspeed = 0;
    vspeed = 0;
    alarm[7] = 50;
}
else
{
    move_towards_point(targetX,targetY,3);
    alarm[7] = 1;
}

