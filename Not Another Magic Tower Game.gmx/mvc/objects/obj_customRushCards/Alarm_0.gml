if(bStep > 0)
{
    image_xscale += sStep;
    image_yscale += sStep;
    depth += dStep;
    image_alpha += aStep;
    x += xStep;
    y += yStep;
    bStep -= 1;
    alarm[0] = 1;
}
else
{
    moving = false;
    event_user(0);
}

