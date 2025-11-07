p = instance_create(x,y,obj_beFinalBullet6);
if(type == 0)
{
    p.image_index = 2;
    p.speed = 4 + (index - 2) * 0.5;
}
else if(type == 1)
{
    p.image_index = 8;
    p.speed = 4 + (index - 2) * 0.5;
}
else if(type == 2)
{
    p.image_index = 0;
    p.speed = 4 + index * 0.5;
}
p.direction = dir + 90 - index * 5;
spark = instance_create(x,y, obj_beFinalRodSpark);
alarm[0] = 7;

