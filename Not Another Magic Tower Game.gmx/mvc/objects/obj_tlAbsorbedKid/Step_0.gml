if(start)
{
    rAngle += 5;
    r -= rspd;
    x = cx + lengthdir_x(r, rAngle);
    y = cy + lengthdir_y(r, rAngle);
    image_angle = point_direction(cx,cy,x,y) - 270;
    if(image_xscale > 0)
    {
        image_xscale -= 0.005;
    }
    else
    {
        image_xscale += 0.005;
    }
    image_yscale -= 0.005;
    time -= 1;
    if(time <= 0)
    {
        start = false;
    }
}
else
{
    image_angle +=5;
    image_alpha -= 0.02;
    if(image_alpha == 0)
    {
        instance_destroy();
    }
}

