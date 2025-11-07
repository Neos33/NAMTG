if(image_index < 18)
{
    if(image_index == 5)
    {
        audio_playsound(sndCannon);
    }
    image_index += 1;
    alarm[3] = 2;
}
else
{
    instance_destroy();
}

