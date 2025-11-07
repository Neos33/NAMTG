
if(image_xscale > 0)
{
    image_xscale -= 0.04;
    image_yscale -= 0.04;
    image_angle -= 30;
    alarm[0] = 1;
}
else
{
    instance_destroy();
}


