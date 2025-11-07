if(!fade)
{
    if(alpha < 1)
    {
        alpha += 0.02;
    }
}
else
{
    if(alpha > 0)
    {
        alpha -= 0.02;
    }
    else
    {
        instance_destroy();
    }
}

