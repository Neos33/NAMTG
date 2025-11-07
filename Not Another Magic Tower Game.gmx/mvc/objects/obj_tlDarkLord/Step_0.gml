if(point_distance(x,y,672,304) < 3)
{
    speed = 0;
    x = 672;
    y = 304;
    if(!start)
    {
        start = true;
        alarm[3] = 1;
    }
}
else
{
    move_towards_point(672,304,4);
}

