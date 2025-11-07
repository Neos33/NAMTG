if(start)
{
    if(stepAngle < 5)
    {
        stepAngle += 0.15;
    }
    angle += stepAngle;
    px = x;
    py = y;
    x = centerX + radius * cos(degtorad(angle));
    y = centerY - radius * sin(degtorad(angle));
    if(time mod 3 == 0)
    {
        b = instance_create(x,y,obj_faroMidTimeBullet1);
        b.direction = point_direction(centerX,centerY,x,y);
        //b.direction = point_direction(px,py,x,y);
    }
    if(image_xscale > 0)
    {
        image_xscale -= 1/150;
        image_yscale -= 1/150;
    }
    else
    {
        instance_destroy();
    }
    time += 1;
}

