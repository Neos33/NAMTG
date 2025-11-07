over = true;
if(image_alpha > 0)
{
    image_alpha -= 0.05;
    alarm[4] = 1;
}
else
{
    instance_destroy();
}

