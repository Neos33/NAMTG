if(start && instance_exists(obj_mmm_player))
{
    totalMeter += global.levelSpeed;
    tempMeter = currentMeter;
    currentMeter = RangeClamp(round((totalMeter + 512 - obj_mmm_player.y) / 20), tempMeter, 999999);
    
    global.levelSpeed = 2.5 + floor(currentMeter / 50) * 0.2;
    __background_set( e__BG.VSpeed, 0, global.levelSpeed );
}
else if(!instance_exists(obj_mmm_player))
{
    if(global.levelSpeed > 0)
    {
        global.levelSpeed -= 0.1;
        __background_set( e__BG.VSpeed, 0, __background_get( e__BG.VSpeed, 0 ) - (0.1) );
    }
    else
    {
        global.levelSpeed = 0;
        __background_set( e__BG.VSpeed, 0, 0 );
    }
    alarm[0] = 0;
}

if(keyboard_check_pressed(vk_backspace))
{
    if(!instance_exists(obj_mmm_menu))
    {
        instance_create(256 + 17, 96 + 23, player);
        //transition_steps = 50;
        //transition_kind = 21;
        room_goto(r10F);
    }
}

