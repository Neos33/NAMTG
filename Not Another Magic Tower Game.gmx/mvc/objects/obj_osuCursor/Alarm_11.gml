if(point_distance(x,y,targetX,targetY) < spd)
{
    x = targetX;
    y = targetY;
    hspeed = 0;
    vspeed = 0;
}
else
{
    move_towards_point(targetX, targetY, spd);
    alarm[11] = 1;
}

