if(toMin)
{
    if(angle > midAngle)
    {
        angleSpd += 0.3;
        
    }
    else
    {
        if(angleSpd > 0)
        {
            angleSpd -= 0.3;
        }
        else
        {
            angle = minAngle;
            toMin = false;
        }
    }
    angle -= angleSpd;
}
else
{
    if(angle < midAngle)
    {
        angleSpd += 0.3;
    }
    else
    {
        if(angleSpd > 0)
        {
            angleSpd -= 0.3;
        }
        else
        {
            angle = maxAngle;
            toMin = true;
        }
    }
    angle += angleSpd;
}

alarm[5] = 1;

