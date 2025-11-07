vspeed = global.levelSpeed;

for(i = 0; i < 3; i+=1)
{
    c[i].y = y;
    if(c[i].x > x + 420)
    {
        c[i].x -= 840;
    }
    else if(c[i].x < x - 420)
    {
        c[i].x += 840;
    }
    rAngle[i] += rSpd[i];
    for(j = 0; j < 6; j+=1)
    {
        d[i,j].x = c[i].x + radius * cos(degtorad(j * 60 + rAngle[i]));
        d[i,j].y = c[i].y - radius * sin(degtorad(j * 60 + rAngle[i]));
    }
    
    p[i].x = c[i].x + radius * cos(degtorad(rAngle[i]));
    p[i].y = c[i].y - radius * sin(degtorad(rAngle[i]));
}

