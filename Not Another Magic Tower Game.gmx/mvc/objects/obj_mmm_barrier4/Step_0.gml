vspeed = global.levelSpeed;

for(i = 0; i < 12; i+=1)
{
    d[i].x = x + radius * cos(degtorad(i * 30 + angle));
    d[i].y = y - radius * sin(degtorad(i * 30 + angle));
}

for(i = 0; i < level + 1; i+=1)
{
    p[i].x = x + radius * cos(degtorad(i * 360 / (level + 1) + angle));
    p[i].y = y - radius * sin(degtorad(i * 360 / (level + 1) + angle));
}
if(!stopFlag)
    angle += rotateSpd;

