if(image_xscale > 0)
{
    image_xscale -= 0.02;
    image_yscale -= 0.02;
    image_angle += 15;
    image_alpha -= 0.01;
    alarm[0] = 1;
}
else
{
    instance_destroy();
}

if(image_angle > 0)
{
    tiltSpd += 0.05;
}

