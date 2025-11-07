if(x < 288)
{
    x += obj_s8SmogSettings.spd/2;
    image_xscale = 288 - x;
    alarm[1] = 1;
}
else
{
    instance_destroy();
}

