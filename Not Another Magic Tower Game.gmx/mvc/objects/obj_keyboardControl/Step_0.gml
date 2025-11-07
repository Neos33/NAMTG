/*if(keyboard_check_pressed(global.left))
{
    start = obj_startGame;
    load = obj_resumeGame;
    _end = obj_quitGame;
    audio_playsound(sndJump);
    with(start)
    {
        instance_change(obj_resumeGame, true);
    }
    with(load)
    {
        instance_change(obj_quitGame, true);
    }
    with(_end)
    {
        instance_change(obj_startGame, true);
    }
}
else if(keyboard_check_pressed(global.right))
{
    start = obj_startGame;
    load = obj_resumeGame;
    _end = obj_quitGame;
    audio_playsound(sndJump);
    with(start)
    {
        instance_change(obj_quitGame, true);
    }
    with(load)
    {
        instance_change(obj_startGame, true);
    }
    with(_end)
    {
        instance_change(obj_resumeGame, true);
    }
}

/* */
/*  */
