vspeed = global.levelSpeed;

angle += rotateSpd;

for(i = 0; i < 12; i+=1)
{
    d[i].x = x + radius * cos(degtorad(i * 30 + angle));
    d[i].y = y - radius * sin(degtorad(i * 30 + angle));
}

for(i = 0; i < 2; i+=1)
{
    p1[i].x = x + radius * cos(degtorad(i * 180 + angle));
    p1[i].y = y - radius * sin(degtorad(i * 180 + angle));
    p1[i].angle += rotateSpd;
    p2[i].x = x + radius * cos(degtorad(i * 180 + angle + 180));
    p2[i].y = y - radius * sin(degtorad(i * 180 + angle + 180));
    p2[i].angle += rotateSpd;
}



