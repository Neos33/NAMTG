if(image_xscale != 64)
{
    image_xscale += obj_s8SmogSettings.spd/4;
    image_yscale += obj_s8SmogSettings.spd/2;
    alarm[0] = 1;
}
else
{
    event_user(0);
    alarm[1] = (obj_s8SmogSettings.totalBlocks-4)*32/obj_s8SmogSettings.spd;
}

