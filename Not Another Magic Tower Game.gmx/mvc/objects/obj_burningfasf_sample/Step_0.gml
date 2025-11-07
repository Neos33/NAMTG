if(boom)
{
    if(boomCountDown > 0)
    {
        boomCountDown -= 1;
    }
    else
    {
        instance_destroy();
    }
}

