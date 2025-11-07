if(b2[0].x - x < radius)
{
    for(i = 0; i < 10; i+=1)
    {
        b2[i].x += 8;
    }
    alarm[3] = 1;
}
else
{
    for(i = 0; i < 10; i+=1)
    {
        b2[i].x = x + radius;
    }
}

