vspeed = global.levelSpeed;

angle += rotateSpd;

for(i = 0; i < 2; i += 1)
{
    b[i].y = y;
    if(i == 1)
    {
        offset = 0.5;
    }
    else
    {
        offset = 0;
    }
    for(j = 0; j < 8; j+=1)
    {
        p[i,j].x = b[i].x + radius * cos(degtorad((j + offset) * 45 + angle * sign(i -0.5)));
        p[i,j].y = b[i].y - radius * sin(degtorad((j + offset) * 45 + angle * sign(i -0.5)));
    }
}

