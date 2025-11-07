for(i = 0; i < 2; i += 1)
{
    with(b[i])
    {
        instance_destroy();
    }
    for(j = 0; j < 8; j+=1)
    {
        with(p[i,j])
        {
            instance_destroy();
        }
    }
}

