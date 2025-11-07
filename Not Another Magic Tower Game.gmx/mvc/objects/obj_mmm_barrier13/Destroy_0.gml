for(i = 0; i < 3; i+=1)
{
    with(p[i])
    {
        instance_destroy();
    }
}

for(i = 0; i < 6; i+=1)
{
    with(d[i])
    {
        instance_destroy();
    }
}

with(b1)
{
    instance_destroy();
}
with(b2)
{
    instance_destroy();
}

