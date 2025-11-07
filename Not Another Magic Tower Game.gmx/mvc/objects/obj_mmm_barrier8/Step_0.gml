vspeed = global.levelSpeed;

for(var i = 0; i<6;i+=1)
{
    p1[i].y = y;
    if instance_exists(p2[i]) p2[i].y = y - radius;
    p3[i].y = y + radius;
    
    if(p1[i].x < x - 360)
    {
        p1[i].x += 720;
    }
    if instance_exists(p2[i])
    {
    if(p2[i].x > x + 240)
    {
        p2[i].x -= 480;
    }
    }
    if(p3[i].x > x + 360)
    {
        p3[i].x -= 720;
    }
}

