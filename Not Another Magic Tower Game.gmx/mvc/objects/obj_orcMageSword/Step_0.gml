if(status == 1)
{
    move_towards_point(targetX,targetY,4);
    if(point_distance(x,y,targetX,targetY) < 4)
    {
        instance_destroy();
    }
}

