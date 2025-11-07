if(image_yscale < 1)
{
    image_xscale += 0.1;
    image_yscale += 0.1;
    alarm[0] = 1;
}
else
{
    alarm[1] = 10;
    alarm[2] = 50;
}

