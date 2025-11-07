if(image_xscale < 1.5)
{
    image_xscale += 0.02;
    image_yscale += 0.02;
    alarm[5] = 1;
}
else
{
    alarm[6] = 1;
    start = true;
    ox = x;
    oy = y;
    dep = 14;
}

