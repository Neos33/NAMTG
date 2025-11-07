image_angle += 5;
if(!stop)
{
    image_xscale += 0.01;
    image_yscale += 0.01;
}
else
{
    if(image_xscale > 0)
    {
        image_xscale -= 0.3;
        image_yscale -= 0.3;
    }
    else
    {
        instance_destroy();
    }
}

