if(image_xscale > 0)
{
    image_xscale -= 0.05;
    image_alpha -= 0.05;
    alarm[4] = 1;
}
else
{
    instance_destroy();
}

