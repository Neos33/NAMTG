if(image_alpha > 0)
{
    image_alpha -= 0.1;
    image_xscale -= 0.05;
    image_yscale -= 0.05;
    alarm[0] = 1;
}
else
{
    instance_destroy();
}

