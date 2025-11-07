if(image_xscale < 2)
{
    image_xscale += 0.04;
    image_yscale += 0.04;
    alarm[0] = 1;
}
else
{
    bulletCount = 12;
    startAng = random_range(0,360);
    alarm[1] = 30;
}

