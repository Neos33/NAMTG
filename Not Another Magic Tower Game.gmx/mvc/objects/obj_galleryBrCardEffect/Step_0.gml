if(image_alpha > 0)
{
    image_alpha -= 0.15;
    image_xscale += 0.08;
    image_yscale += 0.08;
}
else
{
    instance_destroy();
}

