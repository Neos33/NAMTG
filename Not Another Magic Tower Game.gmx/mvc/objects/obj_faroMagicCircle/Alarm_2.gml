if(image_alpha > blinkCenter - 0.2)
{
    image_alpha -= 0.04;
    if(image_alpha > 0 && !disappear)
    {
        alarm[2] = 1;
    }
}
else
{
    alarm[3] = 1;
}

