if(start && !isEnd)
{
    if(!up)
    {
        if(alpha > 0.3)
        {
            alpha -= 0.03;
        }
        else
        {
            up = true;
        }
    }
    else
    {
        if(alpha < 0.9)
        {
            alpha += 0.03;
        }
        else
        {
            up = false;
        }
    }
}

