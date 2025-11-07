if(type == 0)
{
    if(direction < 330)
    {
        direction += 1.5;
    }
}
else if(type == 1)
{
    if(direction > 210)
    {
        direction -= 1.5;
    }
}
//speed += 0.2;
image_angle = direction - 45;

