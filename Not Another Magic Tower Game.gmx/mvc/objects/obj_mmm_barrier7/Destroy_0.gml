for(var i = 0; i < 4; i+=1)
{
    with(p[i])
    {
        instance_destroy();
    }
    with(p1[i])
    {
        instance_destroy();
    }
    with(p2[i])
    {
        instance_destroy();
    }
}
with(d1)
{
    instance_destroy();
}

with(d2)
{
    instance_destroy();
}

