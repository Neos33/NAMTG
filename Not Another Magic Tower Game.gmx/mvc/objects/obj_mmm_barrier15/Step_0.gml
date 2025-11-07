vspeed = global.levelSpeed;

angle += rotateSpd;
for(var i = 0; i < 2; i+=1)
{
    b[i].x = x + radius * cos(degtorad(i * 180 + angle));
    b[i].y = y - radius * sin(degtorad(i * 180 + angle));
    subAngle[i] += stepAngle[i];
    for(var j = 0; j < 4; j+=1)
    {
        p[i,j].x = b[i].x + 106 * cos(degtorad((j + 0.5) * 90 + subAngle[i]));
        p[i,j].y = b[i].y - 106 * sin(degtorad((j + 0.5) * 90 + subAngle[i]));
    }
}

for(var i = 0; i < 12; i+=1)
{
    d[i].x = x + radius * cos(degtorad(i * 30 + angle));
    d[i].y = y - radius * sin(degtorad(i * 30 + angle));
}

