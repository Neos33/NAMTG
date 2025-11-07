if(image_xscale > 0)
{
    image_xscale -= 0.02;
    image_yscale -= 0.02;
    alarm[1] = 1;
}
else
{
    instance_destroy();
}

