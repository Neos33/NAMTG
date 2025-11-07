if(!down)
{    
    if(alpha < 1)
    {
        alpha += 0.005;
    }
    else
    {
        down = true;
    }
}
else
{
    if(alpha > 0.8)
    {
        alpha -= 0.005;
    }
    else
    {
        down = false;
    }
}

