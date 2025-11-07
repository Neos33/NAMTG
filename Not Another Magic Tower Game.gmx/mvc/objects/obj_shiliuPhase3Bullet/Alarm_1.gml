if(image_xscale > minScale)
{
    image_xscale -= stepScale;
    image_yscale -= stepScale;
    alarm[1] = 1;
}
else
{
    alarm[0] = 1;
}

