if(alpha > 0)
{
    alpha -= 0.05;
    alarm[9] = 1;
    with(obj_16FControlledNPC1)
    {
        image_alpha -= 0.05;
    }
}
else
{
    with(obj_16FControlledNPC1)
    {
        instance_destroy();
    }
    alarm[10] = 1;
}

