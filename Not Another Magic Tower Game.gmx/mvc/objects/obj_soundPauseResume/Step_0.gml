x = __view_get( e__VW.XView, 0 ) + 732;
y = 24;

if(point_distance(mouse_x,mouse_y,x+16,y+16) <= 16)
{
    checked = true;
    if(mouse_check_button_pressed(mb_left))
    {
        if(image_index == 0)
        {
            with(obj_soundProgressControl)
            {
                FMODInstanceSetPaused(bgm, true);
                soundPaused = true;
            }
            image_index = 1;
        }
        else
        {
            with(obj_soundProgressControl)
            {
                audio_resumemusic_volume(bgm);
                alarm[0] = 1;
                soundPaused = false;
            }
            image_index = 0;        
        }
    }
}
else
{
    checked = false;
}

