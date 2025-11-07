if(!transformed && hp <= 40)
{
    if(targetX == 400 && targetY == 368)
    {
        transformStart = true;
        transformed = true;
    }
}
if(transformed && !transformStart)
{
    angle += 5;
    y = 368 + 3 * sin(degtorad(angle));
}

