if(image_index < 6)
{
    image_index += 1;
    alarm[0] = 5;
}
else
{
    c = instance_create(x,y, obj_giantBat_child);
    c.targetX = targetX;
    c.targetY = targetY;
    instance_destroy();
}

