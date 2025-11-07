for(i = 0; i < 12; i+=1)
{
    with(d[i])
    {
        instance_destroy();
    }
}

for(i = 0; i < 2; i+=1)
{
    with(p1[i])
    {
        instance_destroy();
    }
    with(p2[i])
    {
        instance_destroy();
    }
}

