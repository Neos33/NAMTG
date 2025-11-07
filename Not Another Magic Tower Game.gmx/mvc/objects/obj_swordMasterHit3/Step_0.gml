if(image_xscale < 1.4)
{
    image_xscale += 0.05;
    image_yscale += 0.05;
}
/*tempAngle = image_angle;

targetAngle = point_direction(player.x,player.y,x,y);
if(abs(tempAngle - targetAngle) > 180)
{
    if(tempAngle - 5 < 0)
    {
        tempAngle += 360;
    }
    else if(tempAngle + 5 > 360)
    {
        tempAngle -= 360;
    }
}
image_angle = RangeClamp(targetAngle, tempAngle - 5, tempAngle + 5);

/* */
/*  */
