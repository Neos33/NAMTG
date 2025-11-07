if(image_alpha < 0.5)
{
    image_alpha = 0.5;
    alarm[0] = 1;
}
else if(image_alpha < 1)
{
    image_alpha += 0.02;
    alarm[0] = 1;
}
else
{
    image_alpha = 1;
}

