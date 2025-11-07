image_xscale -= 0.1;
image_yscale -= 0.1;
image_angle -= 15;
if(image_xscale < 0.1)
{
    instance_destroy();
}
else
{
    alarm[0] = 1;
}

