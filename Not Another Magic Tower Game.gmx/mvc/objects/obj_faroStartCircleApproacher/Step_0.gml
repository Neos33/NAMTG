if(time > 0)
{
    time -= 1;
    r = 64 * 0.5 + time * spd;
}
else
{
    instance_destroy();
}


