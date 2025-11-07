if(alpha > minAlpha)
{
    alpha -= stepAlpha;
    alarm[1] = 1;
}
else
{   
    count += 1;
    if(count < 3)
    {
        alarm[0] = 1;
    }
    else
    {
        alarm[2] = 1;
    }
}

