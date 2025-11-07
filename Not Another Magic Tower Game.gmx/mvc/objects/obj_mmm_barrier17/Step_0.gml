vspeed = global.levelSpeed;

moveSpd = RangeClamp(3 + global.levelSpeed / 4, 3, 7);

for(i = 0; i < 10; i+=1)
{
    d[0,i].x -= moveSpd; 
    d[0,i].y -= moveSpd - global.levelSpeed;
    if(d[0,i].x < x - radius)
    {
        d[0,i].x += 2 * radius;
        d[0,i].y += 2 * radius;
    }
    d[1,i].x += moveSpd; 
    d[1,i].y -= moveSpd - global.levelSpeed;
    if(d[1,i].x > x + radius)
    {
        d[1,i].x -= 2 * radius;
        d[1,i].y += 2 * radius;
    }
}

for(i = 0; i < 4; i+=1)
{
    p[0,i].x -= moveSpd; 
    p[0,i].y -= moveSpd - global.levelSpeed;
    if(p[0,i].x < x - radius)
    {
        p[0,i].x += 2 * radius;
        p[0,i].y += 2 * radius;
    }
    p[1,i].x += moveSpd; 
    p[1,i].y -= moveSpd - global.levelSpeed;
    if(p[1,i].x > x + radius)
    {
        p[1,i].x -= 2 * radius;
        p[1,i].y += 2 * radius;
    }
}

