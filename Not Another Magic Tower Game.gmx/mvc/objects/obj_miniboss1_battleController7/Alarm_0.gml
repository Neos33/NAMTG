p = instance_create(400 + (count - 2) * 128, 304, obj_txtYaranayika);
p.image_index = count;

count += 1;
if(count < 5)
{
 alarm[0] = 10;
}
else
{
 count = 0;
 alarm[1] = 12;
}

