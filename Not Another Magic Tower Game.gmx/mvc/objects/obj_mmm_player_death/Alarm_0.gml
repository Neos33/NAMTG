if(image_xscale > 0)
{
    image_xscale -= 0.1;
    image_yscale += 0.4;
    alarm[0] = 1;
}
else
{
    instance_destroy();
}

