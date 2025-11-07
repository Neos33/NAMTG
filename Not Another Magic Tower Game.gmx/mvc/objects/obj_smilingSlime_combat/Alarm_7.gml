status = 4;
roundTotal = breakTotal;
alarm[10] = 1;
if(breakTotal == 1)
{
    if(countdown > 0)
    {
        countdown -= 1;
    }
    else
    {
        breakTotal -= 1;
    }
}
else
{
    breakTotal -= 1;
}

