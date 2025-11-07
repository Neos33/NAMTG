if(abs(x - targetX) < 8)
{
    dir = sign(targetX - x);
    x += 8 * dir;
    alarm[4] = 1;
}
else
{
    x = targetX;
    if(x < 400)
    {
        dirMin = -30;
        dirMax = 30;
        left = false;
    }
    else
    {
        dirMin = 150;
        dirMax = 210;
        left = true;
    }
    sndroar = false;
    alarm[5] = 30;
    alarm[6] = 150;
}

