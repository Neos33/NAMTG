if(angle < 360)
{
    angle += 10;
    image_angle = angle;
    image_xscale += 0.1;
    image_yscale += 0.1;
    alarm[0] = 1;
}
else
{
    alarm[1] = 1;
}

