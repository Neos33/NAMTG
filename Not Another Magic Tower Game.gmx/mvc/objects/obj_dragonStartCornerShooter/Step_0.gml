image_angle += 3;
if(image_xscale < 1)
{
    image_xscale += 0.02;
    image_yscale += 0.02;
}
if(scale < 2)
{
    scale += 0.05;
}
else
{
    scale = 1;
}
if(start)
{
    px1 += 1;
    px2 -= 1;
    event_user(0);
}

