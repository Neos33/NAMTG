x = cx + rad * cos(degtorad(dir));
y = cy - rad * sin(degtorad(dir));
rad += 2;
dir += dSpd;
if(dSpd < 5)
{
    dSpd += 0.05;
}

