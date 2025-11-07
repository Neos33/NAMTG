if(up)
{
    if(alpha < 1)
    {
        alpha += 0.04;
    }
    else
    {
        up = 0;
    }
}
else
{
    if(alpha > 0.2)
    {
        alpha -= 0.04;
    }
    else
    {
        up = 1;
    }
}

