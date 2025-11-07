for(i = 0; i < 3; i+=1)
{
    with(b[i])
    {
        instance_destroy();
    }
    
    with(p[i])
    {
        instance_destroy();
    }
    
}

for(i = 0; i < 10; i += 1)
{
    with(d[i])
    {
        instance_destroy();
    }
}

