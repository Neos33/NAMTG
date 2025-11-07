if(image_xscale < 1)
{
    image_xscale += 0.03;
    image_yscale += 0.02;
    image_alpha += 0.02;
    alarm[0] = 1;
}
else
{
    alarm[1] = 20;
}

