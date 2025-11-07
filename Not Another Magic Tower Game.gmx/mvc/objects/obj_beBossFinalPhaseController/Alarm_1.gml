with(obj_beFinalPhasePrototype)
{
    dir += other.rspd;
    x = other.centerX + r * cos(degtorad(dir));
    y = other.centerY - r * sin(degtorad(dir));
}
if(rspd < 10)
{
    rspd += 0.05;
    alarm[1] = 1;
    if(!rSound)
    {
        alarm[2] = 14 - rspd;
        rSound = true;
    }
}
else
{
    p1Count -= 1;
    if(p1Count > 0)
    {
        alarm[1] = 1;
        if(!rSound)
        {
            alarm[2] = 14 - rspd;
            rSound = true;
        }
    }
    else
    {
        alarm[3] = 1;
    }
}



