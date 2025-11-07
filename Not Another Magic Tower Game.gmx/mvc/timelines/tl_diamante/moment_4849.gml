with(obj_diaDanmaku2)
{
    speed = 0.1;
    friction = -0.18;
    if(x<400)
    {
        direction = point_direction(x,y,232,300);
    }
    else
    {
        direction = point_direction(x,y,568,300)
    }
}

