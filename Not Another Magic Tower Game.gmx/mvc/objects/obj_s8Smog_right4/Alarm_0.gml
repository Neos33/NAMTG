if(image_yscale != 32)
{
    image_yscale += obj_s8SmogSettings.spd1;
    alarm[0] = 1;
}
else
{
    event_user(0);
}

