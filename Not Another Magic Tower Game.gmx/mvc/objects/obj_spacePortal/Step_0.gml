if(alpha > 0)
{
    alpha -= 0.04;
    scale += 0.02;
}
else
{
    alpha = 1;
    scale = 1;
}
image_angle += 3;
event_inherited();

