if(x < targetX)
{
    x += obj_s8SmogSettings.spd1/2;
    image_xscale = targetX - x;
    alarm[1] = 1;
}
else
{
    instance_destroy();
}

