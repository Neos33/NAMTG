if(!inited)
{
    image_xscale = 32;
    image_yscale = 0;
    alarm[0] = 1;
    alarm[1] = obj_s8SmogSettings.totalBlocks1 * 32/obj_s8SmogSettings.spd1;
}
else
{
    image_xscale = 64;
    image_yscale = 64;
    status = 1;
    alarm[1] = 1;
    alarm[11] = 1;
}
targetX = 672;
event_inherited();

