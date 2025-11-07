if(room == ExtraJKBonus)
    exit;
if(start)
{
    player.frozen = false;
    recordX[personIndex, currentStep] = player.x;
    recordY[personIndex, currentStep] = player.y;
    recordSpr[personIndex, currentStep] = player.sprite_index;
    recordSprInd[personIndex, currentStep] = player.image_index;
    recordXScale[personIndex, currentStep] = player.image_xscale;
    currentStep += 1;
    recordLength[personIndex] = currentStep;
}
else
{
    with(player)
    {
        gravity = 0;
        frozen = true;
        hspeed = 0;
        vspeed = 0;
    }
}
if(currentStep == totalTime * 50)
{
    start = false;
    if(personIndex < 6)
    {
        alarm[1] = 1;
    }
    else
    {
        with(player)
        {
            killPlayer();
        }
    }
}

if(room == ExtraJKBonus)
    exit;
if(personIndex < 6)
{
    if(!player_is_alive() && start)
    {
        start = false;
        alarm[1] = 1;
    }
    with(GAMEOVER)
    {
        instance_destroy();
    }
}

if(room == ExtraJKBonus)
    exit;
if(obj_jkExitDoor.transport)
    exit;
if(keyboard_check_released(vk_backspace))
{
    start = false;
    //transition_kind = 21;
    //transition_steps = 100;
    room_goto(ExtraJKPortal);
    player.x = global.JKBackX;
    player.y = global.JKBackY;
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

if(keyboard_check_direct(global.restartbutton) && !keyboard_check_direct(vk_control))
{
    if(!player_is_alive())
    {
       instance_create(startX, startY, player);
    }
    player.x = startX;
    player.y = startY;
    player.vspeed = 0;
    recordLength[personIndex] = 0;
    currentStep = 0;
    blackAlpha = 0;
    alarm[1] = 0;
    alarm[0] = 1;
    with(obj_jkButtonPrototype)
    {
      pressed = false;
    }
    with(obj_jkButtonTLPrototype)
    {
        time = 0;
    }
    with(obj_jkPlatformPrototype)
    {
        x = startX;
        y = startY;
        hspeed = hspd;
        vspeed = vspd;
    }
    with(obj_followingMonster)
    {
        x = startX;
        y = startY;
    }
    with(GAMEOVER)
    {
        instance_destroy();
    }
}

