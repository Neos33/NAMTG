if(image_alpha < 1)
{
    image_alpha += 0.015;
    alarm[3] = 1;
}
else
{
    image_alpha = 1;
    status = 1;
    speed = 1.5;
}

