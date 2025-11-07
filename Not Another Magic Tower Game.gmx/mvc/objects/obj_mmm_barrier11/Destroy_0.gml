for(i = 0; i < 3; i+=1)
{
    with(c[i])
    {
        instance_destroy();
    }
    
    with(p[i])
    {
        instance_destroy();
    }

    for(j = 0; j < 6; j+=1)
    {
        with(d[i,j])
        {
            instance_destroy();
        }
    }
    
}

