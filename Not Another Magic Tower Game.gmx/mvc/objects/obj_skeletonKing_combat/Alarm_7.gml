if(image_xscale > 1)
{
    image_xscale -= 1;
    image_yscale -= 1.2;
    alarm[7] = 1;
}
else
{
    gravity = 0;
    x = -100;
    y = -100;
    alarm[10] = 1;
}

