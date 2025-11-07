for(var p = 0; p < 16; p += 1)
{
    with(aa[p])
    {
        speed=5;
        direction=random_range(1,359);
        //friction=0.02;
        image_angle=direction+90;
    }
}

