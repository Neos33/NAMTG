with(obj_beFinalPhasePrototype)
{
    dir += other.rspd;
    x = other.centerX + r * cos(degtorad(dir));
    y = other.centerY - r * sin(degtorad(dir));
}
if(rspd > 1)
{
    rspd -= 0.1;
    alarm[3] = 1;
    if(!rSound)
    {
        alarm[2] = 13 - rspd;
        rSound = true;
    }
}
else
{
    rspd = 1;
    if(((obj_beFinalPhase1.dir mod 360) - 210) <= 1)
    {
        obj_beFinalPhase1.dir = 210;
        obj_beFinalPhase2.dir = 330;
        obj_beFinalPhase3.dir = 90;
        with(obj_beFinalPhasePrototype)
        {
            x = other.centerX + r * cos(degtorad(dir));
            y = other.centerY - r * sin(degtorad(dir));
        }
    }
    else
    {
        alarm[3] = 1;
    }
}

