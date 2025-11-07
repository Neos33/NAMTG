if(phase == 0 && image_alpha < 1)
{
    image_alpha += 0.2;
}
else if(phase == 0)
{
    phase = 1;
}

if(phase == 1 && image_alpha >= 0)
{
    image_alpha -= 0.2;
}

if(image_alpha < 0)
{
    instance_destroy();
}

