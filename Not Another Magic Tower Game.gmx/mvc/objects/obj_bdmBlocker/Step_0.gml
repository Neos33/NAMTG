image_angle += 5;
if(image_xscale > targetScale)
{
    image_xscale -= 0.02;
    image_yscale -= 0.02;
}
if(image_xscale <= 0.02)
{
    instance_destroy();
}


if(!instance_exists(obj_blackDevilMagician_combat))
{
    instance_destroy();
}

