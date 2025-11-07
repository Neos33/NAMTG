vspeed = global.levelSpeed;

b[0].y = y;
b[1].y = y - (radius + 20);
b[2].y = y - (radius + 20);
b[3].y = y + (radius + 20);
b[4].y = y + (radius + 20);

for(i = 0; i < 5; i+=1)
{
    rAngle[i] += rSpd[i];
}
centerAngle += centerRotateAngleSpd;

for(i = 0; i < 4; i += 1)
{
    p[0, i].x = b[0].x + (radius - 20) * cos(degtorad(centerAngle)) * cos(degtorad(90 * i + rAngle[0]));
    p[0, i].y = b[0].y - (radius - 20) * cos(degtorad(centerAngle)) * sin(degtorad(90 * i + rAngle[0]));
}
for(i = 1; i < 5; i+=1)
{
    for(j = 0; j < 3; j += 1)
    {
        p[i, j].x = b[i].x + radius * cos(degtorad(120 * j + rAngle[i]));
        p[i, j].y = b[i].y - radius * sin(degtorad(120 * j + rAngle[i]));
    }
    for(j = 0; j < 6; j += 1)
    {
        d[i, j].x = b[i].x + radius * cos(degtorad(120 * j + rAngle[i]));
        d[i, j].y = b[i].y - radius * sin(degtorad(120 * j + rAngle[i]));
    } 
}

