if(image_alpha > 0)
{
    image_alpha -= 0.02;
    image_yscale -= 0.02;
    bgScale -= 1 / 40;
    alarm[1] = 1;
}
else
{
    instance_destroy();
}

