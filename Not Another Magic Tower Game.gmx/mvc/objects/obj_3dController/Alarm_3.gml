if(cStart < cSpd * 9)
{
    cStart += cSpd;
    bAngle += bSpd;
    alarm[3] = 1;
}
else
{
    alarm[2] = 1;
}

