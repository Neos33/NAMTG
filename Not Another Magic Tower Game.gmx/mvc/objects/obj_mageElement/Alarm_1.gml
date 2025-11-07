if(image_xscale > 0)
{
    image_xscale -= stepScale;
    image_yscale += stepScale;
    alarm[1] = 1;
}
else
{
    instance_destroy();
}

