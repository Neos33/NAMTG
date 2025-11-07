vspeed = global.levelSpeed;

for(i = 0; i < 8; i+=1)
{
    d[i].x = x + radius * cos(degtorad(i * 45 + angle));
    d[i].y = y - radius * sin(degtorad(i * 45 + angle));
}

for(i = 0; i < level + 1; i+=1)
{
    p[i].x = x + radius * cos(degtorad(i * 360 / (level + 1) + angle));
    p[i].y = y - radius * sin(degtorad(i * 360 / (level + 1) + angle));
}

for(i = 0; i < 3; i+=1)
{
    b[i].y = y;
}

angle += rotateSpd;

