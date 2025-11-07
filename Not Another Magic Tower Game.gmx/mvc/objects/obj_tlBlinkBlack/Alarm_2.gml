if(red < 255)
{
    red += 0.25;
}
if(green < 128)
{
    green += 0.125;
}
if(red < 255 || green < 128)
{
    alarm[2] = 1;
}



