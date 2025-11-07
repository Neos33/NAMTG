dir += 5;
if(rad - 3 > 0)
{
    rad -= 3;
    x = 400 + rad * cos(degtorad(dir));
    y = 304 - rad * sin(degtorad(dir));
}
else
{
    instance_destroy();
}

