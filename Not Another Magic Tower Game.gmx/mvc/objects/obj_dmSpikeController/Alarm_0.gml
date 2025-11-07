var sp1,sp2;
sp1 = instance_create(p1Index, -32, obj_dmSpike);
sp2 = instance_create(768 - p1Index, -32, obj_dmSpike);

if(p1Index < 384)
{
    p1Index += 32;
    alarm[0] = 15;
}
else
{
    start = true;
}

