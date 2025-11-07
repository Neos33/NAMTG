if(shadow.image_index < 12)
{
    shadow.image_index += 1;
    alarm[5] = 3;
}
else
{
    with(shadow)
    {
        instance_destroy();
    }
    if(dashNum < 4)
    {
        status = 2;
    }
    else
    {
        status = 0;
        alarm[11] = 10;
    }
}

