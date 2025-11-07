for(i = 0; i < 6; i += 1)
{
    with(a[i])
    {
        instance_destroy();
    }
}
for(i = 0; i < 10; i+=1)
{
    with(b1[i])
    {
        instance_destroy();
    }
    with(b2[i])
    {
        instance_destroy();
    }
}

