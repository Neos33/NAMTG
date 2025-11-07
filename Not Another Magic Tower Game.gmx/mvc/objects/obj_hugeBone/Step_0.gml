image_angle += 5;
if(hp <= 0)
{
    audio_playsound(sndDeath);
    instance_destroy();
}

if(dx > 0)
{
    if(x > dx)
    {
        instance_destroy();
    }
}
else
{
    if(x < dx)
    {
        instance_destroy();
    }
}

