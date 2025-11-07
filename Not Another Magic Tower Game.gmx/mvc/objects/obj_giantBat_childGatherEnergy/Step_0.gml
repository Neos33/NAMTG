if(point_distance(x,y,parentX,parentY) > 5)
{
    move_towards_point(parentX, parentY, 3);
}
else
{
    instance_destroy();
}

