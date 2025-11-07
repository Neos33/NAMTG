if(!triggered)
{
    if(!instance_exists(obj_yellowDoor) && !instance_exists(obj_blueDoor) && !instance_exists(obj_redDoor) && !instance_exists(obj_greenDoor))
    {
        triggered = true;
        sound_play(sndSwitch);
        alarm[0] = 50;
    }
}

