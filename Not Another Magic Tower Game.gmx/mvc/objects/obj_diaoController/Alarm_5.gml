if(image_index < 4)
{
    image_index += 1;
    alarm[5] = 5;
}
else
{
    if(count < 16)
    {
        alarm[3] = 1;
    }
    else
    {
        final = true;
        image_index = 2;
        alarm[10] = 1;
    }
}

