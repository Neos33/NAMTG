for(i = 0; i < 3 + 2 * level; i+=1)
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

