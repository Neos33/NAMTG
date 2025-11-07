if(princess.image_alpha > 0)
{
    princess.image_alpha -= 0.01;
    princess2.image_alpha += 0.01;
    alarm[2] = 1;
}
else
{
    with(princess)
    {
        instance_destroy();
    }
    alarm[3] = 50;
}

