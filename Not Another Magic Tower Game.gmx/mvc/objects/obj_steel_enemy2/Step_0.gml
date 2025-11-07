
if(HP=0)
{
    audio_playsound(sndDeath)
    instance_destroy()
}

if(bbox_left < 0 || bbox_right > 800)
{
    hspeed *= -1;
}
if(bbox_top < 0 || bbox_bottom > 608)
{
    vspeed *= -1;
}

