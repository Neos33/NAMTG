if(image_alpha < blinkCenter + 0.2)
{
    image_alpha += 0.04;
    if(!disappear)
    {
        alarm[3] = 1;
    }
}
else
{
    alarm[2] = 1;
}

