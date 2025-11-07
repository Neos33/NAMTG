if(b.image_index < 20)
{
    b.image_index += 1;
    alarm[3] = 2;
}
else
{
    with(b)
    {
        instance_destroy();
    }
    b = noone;
}

