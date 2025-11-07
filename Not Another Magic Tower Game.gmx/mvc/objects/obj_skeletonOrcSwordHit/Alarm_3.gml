if(image_index == 0)
{
    hit = instance_create(x,y, obj_skeletonOrcArcHit);
    image_index = 1;
}
else if(image_index < 5)
{
    hit.image_index = image_index;
    image_index += 1;
}
else if(image_index == 5)
{
    hit.alarm[3] = 1;
    image_index += 1;
}
else
{
    instance_destroy();
}
alarm[3] = 5;

