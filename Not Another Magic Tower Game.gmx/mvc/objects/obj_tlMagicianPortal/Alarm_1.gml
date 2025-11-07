alarm[0] = 0;
if(image_xscale > 0)
{
    image_xscale -= 0.05;
    image_yscale -= 0.05;
    alarm[1] = 1;
}
else
{
    instance_destroy();
}

