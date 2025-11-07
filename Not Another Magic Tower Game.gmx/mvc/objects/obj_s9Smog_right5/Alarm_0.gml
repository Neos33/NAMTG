if(image_xscale != -64)
{
    image_xscale -= obj_s8SmogSettings.spd1/2;
    image_yscale += obj_s8SmogSettings.spd1/4;
    alarm[0] = 1;
}
else
{
    status = 1;
}

