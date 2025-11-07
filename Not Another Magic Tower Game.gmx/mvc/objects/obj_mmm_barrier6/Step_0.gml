for(i = 0; i<10;i+=1)
{
    if(i < level)
    {
        p1[i].y = y - radius;
        p3[i].y = y + radius;
        
        if(p1[i].x > x + radius)
        {
            p1[i].x -= 2 * radius;
        }
        else if(p1[i].x < x - radius)
        {
            p1[i].x += 2 * radius;
        }
        
        if(p2[i].y > y + radius)
        {
            p2[i].y -= 2 * radius;
        }
        else if(p2[i].y < y - radius)
        {
            p2[i].y += 2 * radius;
        }
        
        if(p3[i].x > x + radius)
        {
            p3[i].x -= 2 * radius;
        }
        else if(p3[i].x < x - radius)
        {
            p3[i].x += 2 * radius;
        }
        
        if(p4[i].y > y + radius)
        {
            p4[i].y -= 2 * radius;
        }
        else if(p4[i].y < y - radius)
        {
            p4[i].y += 2 * radius;
        }
    }
    d1[i].y = y - radius;
    d3[i].y = y + radius;
    if(d1[i].x > x + radius)
    {
        d1[i].x -= 2 * radius;
    }
    else if(d1[i].x < x - radius)
    {
        d1[i].x += 2 * radius;
    }
    
    if(d2[i].y > y + radius)
    {
        d2[i].y -= 2 * radius;
    }
    else if(d2[i].y < y - radius)
    {
        d2[i].y += 2 * radius;
    }
    
    if(d3[i].x > x + radius)
    {
        d3[i].x -= 2 * radius;
    }
    else if(d3[i].x < x - radius)
    {
        d3[i].x += 2 * radius;
    }
    
    if(d4[i].y > y + radius)
    {
        d4[i].y -= 2 * radius;
    }
    else if(d4[i].y < y - radius)
    {
        d4[i].y += 2 * radius;
    }
}

for(i = 0; i < 4; i += 1)
{
    p[i].y = y + (floor(i / 2) - 0.5) * gap;
}

