for(i = 0; i < 8; i+=1)
{
    with(d[i])
    {
        instance_destroy();
    }
}

for(i = 0; i < level + 1; i+=1)
{
    with(p[i])
    {
        instance_destroy();
    }
}
for(i = 0; i < 3; i+=1)
{
    with(b[i])
    {
        instance_destroy();
    }
}

