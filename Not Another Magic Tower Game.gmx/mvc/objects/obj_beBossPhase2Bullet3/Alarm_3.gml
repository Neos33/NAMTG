if(type == 1)
{
    if(direction > tDir)
    {
        direction -= 2;
        alarm[3] = 1;
    }
    else
    {
        direction = tDir;
    }
}
else if(type == 0)
{
    if(direction < tDir)
    {
        direction += 2;
        alarm[3] = 1;
    }
    else
    {
        direction = tDir;
    }
}

