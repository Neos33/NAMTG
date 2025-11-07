if(b < 255)
{
    b += 4;
    alarm[0] = 1;
}
else
{
    b = 255;
}
blend = make_color_rgb(b,b,b);

