if(type < 3)
{
    if(image_xscale > 0)
    {
        image_xscale -= 0.05;
        image_yscale -= 0.05;
        image_angle -= 30;
        alarm[0] = 1;
    }
    else
    {
        instance_destroy();
    }
}
else
{
    burst = true;
}

