for(j = 0; j < 2; j+=1)
{
    for(i = 0; i < 10; i+=1)
    {
        with(d[j,i])
        {
            instance_destroy();
        }
    }
}

for(j = 0; j < 2; j+=1)
{
    for(i = 0; i < 4; i+=1)
    {
        with(p[j,i])
        {
            instance_destroy();
        }
    }
}

