__view_set( e__VW.XView, 0, random_range(-3,3) );
__view_set( e__VW.YView, 0, random_range(-3,3) );
if(tranformCountDown > 0)
{
    tranformCountDown -= 1;
    if(tranformCountDown == 0)
    {
        sound_play(sndDraculaTran2);
        audio_playsound(sndQuake);
    }
    alarm[10] = 1;
}
else
{
    ShakeScreen(5);
    if(image_xscale > 0)
    {
        image_xscale -= 0.02;
        image_yscale -= 0.02;
        alarm[10] = 1;
    }
    else
    {
        image_alpha = 0;
        instance_create(x,y,obj_draculaRealBody);
    }
}

