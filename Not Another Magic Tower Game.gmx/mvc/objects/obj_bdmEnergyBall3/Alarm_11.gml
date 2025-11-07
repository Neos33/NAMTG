speed=0;
if(image_alpha > 0)
{
    image_alpha -= 0.02;
    alarm[11] = 1;
}
else
{
    instance_destroy();
}

