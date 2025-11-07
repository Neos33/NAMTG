//if(hAngle < 180)
if(hCount < 9)
{
    //hAngle += 20;
    //myRotateY = baseY + 9 * sin(degtorad(hAngle));  
    hCount += 1;
    myRotateY += 1;
    alarm[0] = 1;
}
else
{
    alarm[1] = 1;
}

