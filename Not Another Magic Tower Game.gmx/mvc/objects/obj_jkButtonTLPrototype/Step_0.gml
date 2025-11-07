if(pressed)
{
    image_index = 1;
}
else
{
    image_index = 0;
}
if(time > 0)
{
    time -= 1;
}
else if(pressed)
{
    pressed = false;
}

