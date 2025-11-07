if(global.story[25])
{
    triggered = true;
    x = targetX;
    y = targetY;
    image_angle = targetAngle;
}
else
{
    count = 0;
    stepX = (targetX - x) / 30;
    stepY = (targetY - y) / 30;
    stepAngle = targetAngle / 30;
}


