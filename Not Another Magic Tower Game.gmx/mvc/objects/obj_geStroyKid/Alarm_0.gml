if(point_distance(x,y,targetX,targetY) < spd)
{
    x = targetX;
    y = targetY;
    speed = 0;
    sprite_index = sprPlayerIdle;
    alarm[1] = 35;
}
else
{
    move_towards_point(targetX,targetY,spd);
    sprite_index = sprPlayerRunning;
    alarm[0] = 1;
}

