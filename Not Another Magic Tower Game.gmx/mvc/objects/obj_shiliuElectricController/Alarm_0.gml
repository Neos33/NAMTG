var start = irandom_range(0,15);
for(var i = 0; i < start; i+=1)
{
    if(i == 0)
    {
        instance_create(816, 0, obj_shiliuElectricPoint);
    }
    instance_create(816, i * 32, obj_shiliuElectric);
    if(i == start - 1)
    {
        instance_create(816, start * 32, obj_shiliuElectricPoint);
    }
}

for(var i = start + 4; i < 19; i+=1)
{
    if(i == start + 4)
    {
        instance_create(816, (start + 4) * 32, obj_shiliuElectricPoint);
    }
    instance_create(816, i * 32, obj_shiliuElectric);
    if(i == 18)
    {
        instance_create(816, 19 * 32, obj_shiliuElectricPoint);
    }
}
alarm[0] = 80;

