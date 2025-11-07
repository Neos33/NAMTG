if(blackAlpha < 1)
{
    blackAlpha += 0.01;
    alarm[1] = 1;
}
else
{
    personIndex += 1;
    event_user(0);
    currentStep = 0;
    if(!player_is_alive())
    {
        instance_create(startX, startY, player);
    }
    player.x = startX;
    player.y = startY;
    player.frozen = true;
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
    obj_jkDoor.alarm[0] = 1;
    alarm[2] = 10;
}

