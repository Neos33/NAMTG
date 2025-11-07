if(image_xscale > 0)
{
    image_xscale -= 0.03;
    image_yscale -= 0.03;
    alarm[2] = 1;
}
else
{
    instance_destroy();
}

