if(image_index < 6)
{
    image_index += 1;
    alarm[0] = 3;
}
else
{
    instance_create(x,y, summonObj);
    instance_destroy();
}

