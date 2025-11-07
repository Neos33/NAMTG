if(image_xscale < 0.4)
{
    image_xscale += 0.02;
    image_yscale += 0.02;
    alarm[0] = 1;
}
else
{
    alarm[1] = 50;
}

