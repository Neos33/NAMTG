//if(hAngle > 0)
if(hCount > 0)
{
    //hAngle -= 20;
    //myRotateY = baseY - 9 * sin(degtorad(hAngle));
    hCount -= 1;
    myRotateY -= 1;
    alarm[1] = 1;
}
else
{
    alarm[0] = 1;
}

