alarm[3] = 0;
hspeed = 0;
vspeed = 0;
if(image_index < 8)
{
    if(image_index == 5)
    {
        audio_playsound(sndfasfboom);
    }
    image_index += 1;
    alarm[4] = 3;
}
else
{
    instance_destroy();
}

