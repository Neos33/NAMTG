if(image_xscale > 0)
{
    image_xscale -= 0.04;
    image_yscale -= 0.04;
    alarm[4] = 1;
}
else
{
    instance_destroy();
}

