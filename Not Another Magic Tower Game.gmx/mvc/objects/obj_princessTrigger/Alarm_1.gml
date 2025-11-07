if(count > 0)
{
    count -= 1;
    princess.y -= 1;
    alarm[1] = 10;
}
else
{
    princess2 = instance_create(608, 160, obj_princess);
    princess2.image_alpha = 0;
    alarm[2] = 50;
}

