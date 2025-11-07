for(i = 0; i < level; i+=1)
{
    with(p[i])
    {
        instance_destroy();
    }
}

for(i = 0; i < 7; i+=1)
{
    with(d[i])
    {
        instance_destroy();
    }
}

