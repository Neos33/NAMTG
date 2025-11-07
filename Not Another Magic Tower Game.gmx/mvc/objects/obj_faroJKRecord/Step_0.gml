if(start)
{
    if(currentStep == totalTime * 50)
    {
        start = false;
    }
    currentStep += 1;
}

if(obj_jkExitDoor.transport)
{
    start = false;
}

if(keyboard_check_direct(global.downbutton))
{
    if(player_is_alive())
    {
        player.sprite_index = sprPlayerIdle;
        player.vspeed = 0;
        player.x = startX;
        player.y = startY;
    }
}

