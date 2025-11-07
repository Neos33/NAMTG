if(rotateAngle > 720)
{
    if(rSpd < 20)
    {
        rSpd += 0.2;
    }
    else
    {
        rSpd = 20;
    }
}
else
{
    if(rotateAngle / 36 < 5)
    {
        rSpd = 5;
    }
    else
    {
        rSpd = rotateAngle / 36;
    }
}

if(rotateAngle > rSpd)
{
    rotateAngle -= rSpd;
    eAngle += rSpd;
    alarm[5] = 1;
}
else
{
    eAngle += rotateAngle;
    rotateAngle = 0;
    alarm[6] = 1;
}

