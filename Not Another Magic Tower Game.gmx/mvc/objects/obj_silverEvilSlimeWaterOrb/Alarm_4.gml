if(image_index < 5)
{
    image_index += 1;
    alarm[4] = 5;
}
else
{
    if(!boom)
    {
        image_index = 2;
        alarm[4] = 5;
    }
    else
    {
        alarm[5] = 5;
    }
}

