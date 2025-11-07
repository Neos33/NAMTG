vspeed = global.levelSpeed;

for(i = 0; i<4;i+=1)
{
    p1[i].y = y;
    p2[i].y = y - radius;
    p3[i].y = y + radius;
    
    if(p1[i].x < x - 370)
    {
        p1[i].x += 740;
    }
    if(p2[i].x > x + 370)
    {
        p2[i].x -= 740;
    }
    if(p3[i].x > x + 370)
    {
        p3[i].x -= 740;
    }
}

