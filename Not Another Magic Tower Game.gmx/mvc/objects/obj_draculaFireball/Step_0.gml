image_angle = direction;
if(scale < 2)
{
    scale += 0.03;
}
image_xscale = scale;
image_yscale = scale;
if(abs(targetY - y) < abs(stepY))
{
    y = targetY;
}
else
{
    y += stepY;
}

