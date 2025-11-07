if(status == 0)
{
    ang += 5;
    angle = 45 * cos(degtorad(ang));
    if(image_index < 2)
    {
        image_angle = -45 + angle;
    }
    else
    {
        image_angle = 45 - angle;
    }
}
else if(status == 1)
{
    image_angle -= 15;
}

