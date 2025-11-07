randomNum = choose(5,6,7,8,9);
if(roundTotal > 0)
{    
    roundTotal -= 1;
    if(countdown == 10)
    {
        alarm[10] = 3;
    }
    else
    {
        alarm[10] = 2;
    }
}
else
{
    alarm[11] = 1;
}

