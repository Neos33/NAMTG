if(image_index < 18)
{
    if(image_index == 5)
    {
        audio_playsound(sndCannon);
        instance_create(x,y,view_shaker1);
    }
    image_index += 1;
    alarm[3] = 1;
}
else
{
    instance_destroy();
}

