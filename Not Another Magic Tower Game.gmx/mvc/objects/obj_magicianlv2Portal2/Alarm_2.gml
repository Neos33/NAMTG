if(image_xscale > 0)
{
    image_xscale -= 0.08;
    image_yscale -= 0.08;
    alarm[2] = 1;
}
else
{
    instance_destroy();
}

