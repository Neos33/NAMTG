vspeed = global.levelSpeed;

bAngle[0] += 5;
bAngle[1] += 3;
bAngle[2] += 4;

b[0].y = y + radius * cos(degtorad(bAngle[0]));
b[1].y = y + radius * sin(degtorad(bAngle[1]));
b[2].y = y - radius * sin(degtorad(bAngle[2]));
for(i = 0; i < 3; i+=1)
{
    p[i].y = y;
    if(p[i].x > x + 240)
    {
        p[i].x -= 480;
    }
    else if(p[i].x < x - 240)
    {
        p[i].x += 480;
    }
    if(b[i].x > x + 240)
    {
        b[i].x -= 480;
    }
    else if(b[i].x < x - 240)
    {
        b[i].x += 480;
    }
}

for(i = 0; i < 10; i+=1)
{
    d[i].y = y;
    if(d[i].x > x + 200)
    {
        d[i].x -= 400;
    }
    else if(d[i].x < x - 200)
    {
        d[i].x += 400;
    }
}


