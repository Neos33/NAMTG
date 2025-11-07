if(image_xscale > 0)
{
    image_xscale -= obj_s8SmogSettings.spd1;
    alarm[1] = 1;
}
else
{
    instance_destroy();
}

