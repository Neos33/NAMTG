if(image_xscale < 64)
{
    image_xscale += obj_s8SmogSettings.spd1/2;
    alarm[0] = 1;
}
else
{
    event_user(0);
    alarm[1] = 1;
}

