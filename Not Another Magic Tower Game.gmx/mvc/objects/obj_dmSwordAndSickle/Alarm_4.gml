if(angle < -45)
{
    angle += 9;
    alarm[4] = 1;
}
else if(angle > 45)
{
    angle += 9;
    alarm[4] = 1;
}
if(status == 1)
{
    status = 0;
}
image_angle = angle;

