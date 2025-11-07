if(image_xscale < maxScale)
{
    image_xscale += stepScale;
    image_yscale += stepScale;
    alarm[0] = 1;
}
else
{
    alarm[1] = 1;
}

