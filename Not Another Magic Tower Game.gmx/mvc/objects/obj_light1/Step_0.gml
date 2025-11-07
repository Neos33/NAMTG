if(phase == 0)
{
    p1Count += 1;
    image_angle -= 360 / 10;
    image_xscale += 0.1;
    image_yscale += 0.1;
    if(p1Count == 10)
    {
        image_angle = 0;
        image_xscale = 1;
        image_yscale = 1;
        phase = -1;
        alarm[3] = 10;
    }
}

if(phase == 1)
{
    p2Count += 1;
    image_angle -= 360 / 10;
    image_xscale -= 0.1;
    image_yscale -= 0.1;
    if(p2Count == 8)
    {
        alarm[4] = 1;
    }

}

