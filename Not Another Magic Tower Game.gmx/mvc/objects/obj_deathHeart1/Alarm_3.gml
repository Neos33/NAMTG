if(image_index < 9)
{
    image_index += 1;
    alarm[3] = 1;
}
else
{
    instance_create(x,y,obj_deathHeart2);
    instance_destroy();
}

