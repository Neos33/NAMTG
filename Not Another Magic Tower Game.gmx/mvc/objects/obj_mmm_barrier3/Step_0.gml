vspeed = global.levelSpeed;

if(x > 400)
{
    hspeed -= 0.04 + level * 0.01;
}
else
{
    hspeed += 0.04 + level * 0.01;
}


for(var i = 0; i < 12; i+=1)
{
    if instance_exists(d[i])
    {
        d[i].x = x  + (i - 3) * 40;
        d[i].y = y;
    }
}


for(var i = 0; i < level; i+=1)
{
    if instance_exists(p[i])
    {
        p[i].x = x;
        p[i].y = y;
    }
}

