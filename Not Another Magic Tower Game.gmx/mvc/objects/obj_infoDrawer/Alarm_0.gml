if(image_alpha < 1)
{
    image_alpha += 0.01;
    alarm[0] = 1;
}
else
{
    if(phase < 12)
    {
        alarm[1] = 150;
    }
    else
    {
        alarm[2] = 150;
        alarm[3] = 101;
    }
}

