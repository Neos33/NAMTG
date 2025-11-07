if(!explode)
{
    if(point_distance(x,y,targetX,targetY) <= speed)
    {
        x = targetX;
        y = targetY;
        speed = 0;
    }
}

