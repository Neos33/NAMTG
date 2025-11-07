for(i = 0; i < 5; i+=1)
{
    with(b[i])
    {
        instance_destroy();
    }
    for(j = 0; i < 3; i += 1)
    {
        with(p[i, j])
        {
            instance_destroy();
        }
    }
    if(i > 0)
    {
        for(j = 0; j < 6; j += 1)
        {
            with(d[i, j])
            {
                instance_destroy();
            }
        } 
    }
}

