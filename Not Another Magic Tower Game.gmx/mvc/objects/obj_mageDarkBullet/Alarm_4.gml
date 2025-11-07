if(speed > 0)
{
    speed -= 0.02;
}
if(image_alpha < 0.5)
{
    status = 0;
}
if(image_alpha > 0)
{
    image_alpha -= 0.03;
    alarm[4] = 1;
}
else
{
    instance_destroy();
}

