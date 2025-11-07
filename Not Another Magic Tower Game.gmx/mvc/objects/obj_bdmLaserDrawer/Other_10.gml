if(rotateCount > 0)
{
    targetAngle = irandom_range(45, 150);
    angleDir *= -1;
    rotateCount -= 1;
}
else
{
    alarm[1] = 1;
}

