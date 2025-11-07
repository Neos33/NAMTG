if(b2[0].x  - x > 160)
{
    for(i = 0; i < 10; i+=1)
    {
        b2[i].x -= 12;
    }
    alarm[2] = 1;
}
else
{
    alarm[3] = 30;
    alarm[0] = 41;
}

