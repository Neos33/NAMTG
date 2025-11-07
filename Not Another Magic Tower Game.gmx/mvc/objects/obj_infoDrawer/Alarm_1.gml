if(image_alpha > 0)
{
    image_alpha -= 0.01;
    alarm[1] = 1;
}
else
{
    if(phase < 12)
    {
        phase += 1;
        alarm[0] = 150;
    }
}

