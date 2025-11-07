for(i = 0; i < 4; i+=1)
{
    with(p[i])
    {
        instance_destroy();
    }
}
for(i = 0; i < 10; i+=1)
{
    with(d1[i]) {instance_destroy()};
    with(d2[i]) {instance_destroy()};
    with(d3[i]) {instance_destroy()};
    with(d4[i]) {instance_destroy()};
}
for(i = 0; i < level; i+=1)
{
    with(p1[i]) {instance_destroy()}
    with(p2[i]) {instance_destroy()}
    with(p3[i]) {instance_destroy()}
    with(p4[i]) {instance_destroy()}
}

