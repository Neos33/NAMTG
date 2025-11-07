if(image_alpha < 1)
{
    image_alpha += 0.04;
    alarm[1] = 1;
}
else
{
    image_alpha = 1;
    alarm[0] = 1;
}

