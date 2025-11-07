if(image_alpha > 0)
{
    image_alpha -= 0.02;
    alarm[10] = 1;
}
else
{
    instance_destroy();
}

