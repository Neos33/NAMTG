
if(FMODInstanceIsPlaying(bgm))
{
    with(player)
    {
        hspeed = global.dashSpd;
        sprite_index = sprPlayerRunning;
        gravity = 0.5;
    }
    with(obj_GD_Plane)
    {
        hspeed = global.dashSpd;
    }
    bgOffset += 0.2;
    if(bgOffset >= 800)
    {
     bgOffset = 0;
    }
}
if(checkMouse(__view_get( e__VW.XView, 0 ) + 100 , 32, __view_get( e__VW.XView, 0 ) + 700, 48))
{
    checked = true;
    if(mouse_check_button(mb_left))
    {
        mouseDown = true;
    }
    if(mouse_check_button_released(mb_left))
    {
        mouseDown = false;
        currentPos = floor((mouse_x - __view_get( e__VW.XView, 0 ) - 100) / 600 * size);
        if(!soundPaused && !FMODInstanceIsPlaying(bgm))
        {
            audio_resumemusic_volume(bgm);
        }
        __view_set( e__VW.XView, 0, room_width - global.dashSpd * (size - currentPos) - 96 );
        if(player_is_alive())
        {
            player.x = room_width - global.dashSpd * (size - currentPos) + 32;
            player.y = 304;
        }
        else
        {
            with(GAMEOVER)
            {
                instance_destroy();
            }
            with(obj_GD_Plane)
            {
                instance_destroy();
            }
            instance_create(room_width - global.dashSpd * (size - currentPos) + 32,304,player)
        }
        if(!FMODInstanceIsPlaying(bgm))
        {
            audio_resumemusic_volume(bgm);
            FMODInstanceSetPosition(bgm, ds_list_find_value(list, currentPos));
            FMODInstanceSetPaused(bgm, true);
        }
        else
        {
            FMODInstanceSetPosition(bgm, ds_list_find_value(list, currentPos));
        }
        with(all)
        {
            in = x < (obj_GDObjEffectIn.x - 5);
            out = x < (obj_GDObjEffectOut.x - 5);
        }
    }
}
else
{
    mouseDown = false;
    checked = false;
}


