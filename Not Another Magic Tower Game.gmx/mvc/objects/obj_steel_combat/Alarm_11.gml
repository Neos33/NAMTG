if(point_distance(384, 288, x, y) < 4)
{
    x=384;
    y=288;
    hspeed = 0;
    vspeed = 0;
    isRecoverBegin = true;
    event_user(1);
}
else
{
    move_towards_point(384,288,4);
    alarm[11] = 1;
}

