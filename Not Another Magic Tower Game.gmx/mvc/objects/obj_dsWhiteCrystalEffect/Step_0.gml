if(image_alpha > 0)
{
    image_alpha -= 0.02;
    image_xscale += 0.03;
    image_yscale += 0.03;
}
else
{
    instance_destroy();
}

