if(red < 255)
{
    red += 10;
    if(red > 255)
    {
        red = 255;
    }
    image_blend = make_color_rgb(255,255-red,255-red);
    alarm[0] = 1;
}
else
{
    instance_destroy();
}

