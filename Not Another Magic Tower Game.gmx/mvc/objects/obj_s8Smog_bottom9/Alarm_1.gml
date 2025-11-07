if(x < 416)
{
    x += obj_s8SmogSettings.spd/2;
    image_xscale = 416 - x;
    alarm[1] = 1;
}
else
{
    instance_destroy();
}

