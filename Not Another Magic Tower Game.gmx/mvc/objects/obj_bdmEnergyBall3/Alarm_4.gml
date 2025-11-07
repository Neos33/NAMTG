if(point_distance(x,y,targetX,targetY) < 8)
{
    x = targetX;
    y = targetY;
    hspeed = 0;
    vspeed = 0;
    if(!isEnd)
    {
        event_user(0);
    }
    else
    {
        alarm[11] = 1;
    }
}
else
{
    move_towards_point(targetX,targetY,8);
    alarm[4] = 1;
}

