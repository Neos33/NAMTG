if(image_yscale != -32)
{
    image_yscale -= obj_s8SmogSettings.spd;
    alarm[0] = 1;
}
else
{
    status = 1;
}

