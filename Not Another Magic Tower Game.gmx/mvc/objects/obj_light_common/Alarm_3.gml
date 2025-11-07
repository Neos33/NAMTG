if(image_xscale < 1)
{
    image_xscale += 0.5;
    image_yscale += 0.5;
    image_angle += 20;
    alarm[3] = 1;
}
else
{
    image_xscale = 1;
    image_yscale = 1;
    image_angle = 0;
}


