if(image_xscale < 1.5)
{
    image_xscale += 0.07;
    image_yscale += 0.07;
    image_angle += 18;
    alarm[0] = 1;
}
else
{
 image_xscale = 1.5;
 image_yscale = 1.5;
 image_angle = 0;
}

