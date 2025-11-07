if(red < 255)
{
    red += 10;
}
else
{
    red = 255;
}
image_blend = make_color_rgb(red,0,0);
alarm[11] = 1;

