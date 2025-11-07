if(flag == 0)
{
    if(image_alpha > 0.5)
    {
        image_alpha -= 0.02;
    }
    else
    {
        flag = 1;
    }
}
else
{
    if(image_alpha < 1)
    {
        image_alpha += 0.02;
    }
    else
    {
        flag = 0;
    }
}
if(angle > 0)
{
    tiltSpd -= 0.05;
}
else
{
    tiltSpd += 0.05;
}
angle += tiltSpd;
image_angle = angle;

if(mouse_check_button_pressed(mb_left) && !obj_mmm_gameController.start)
{
    with(obj_mmm_gameController)
    {
        start = true;
        event_user(0);
    }
    with(obj_mmm_soundControl)
    {
        event_user(0);
    }
    audio_playsound(snd_touhou_1UP);
    global.mmmTotalTries += 1;
    alarm[0] = 1;
}

