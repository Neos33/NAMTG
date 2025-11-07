vspeed = global.levelSpeed;

moveAngle += moveSpd;

for(i = 0; i < 3; i+=1)
{
    p[i].y = y + radius * sin(degtorad(moveAngle));
    p[i].angle += rotateSpd;
}

for(i = 0; i < 6; i+=1)
{
    d[i].y += 5 * sin(degtorad(moveAngle)) + global.levelSpeed;
    if(d[i].y > y + radius)
    {
        d[i].y -= 2 * radius;
    }
    else if(d[i].y < y - radius)
    {
        d[i].y += 2 * radius;
    }
}

b1.y = y;
b2.y = y;

