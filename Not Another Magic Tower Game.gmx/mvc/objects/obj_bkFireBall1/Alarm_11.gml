if(vspeed >4)
{
    vspeed = 4;
}
if(image_xscale > 0)
{
    image_xscale -= 0.1;
    image_yscale -= 0.1;
    alarm[11] = 1;
}
else
{
    instance_destroy();
}

