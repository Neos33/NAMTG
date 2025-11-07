if(point_distance(x,y,targetX,targetY) < 12)
{
    hspeed = 0;
    vspeed = 0;
    x = targetX;
    y = targetY;
    move = false;    
}
else
{
    move = true;
    move_towards_point(targetX, targetY, 12);
    alarm[2] = 1;
}

