if(image_alpha > 0)
{
    image_alpha -=  1 / time;
    alarm[0] = 1;
}
else
{
    instance_destroy();
}

