if(distance_to_point(targetX,targetY) <= 5)
{
    x = targetX;
    y = targetY;
    hspeed = 0;
    vspeed = 0;
    alarm[4] = 30;
}
else
{
    move_towards_point(targetX, targetY, 5);
    alarm[3] = 1;
}

