if(!triggered)
{
    triggered = true;
    player.frozen = true;
    instance_create(0,0,obj_faroWhiteBlink);
    event_user(0);
    alarm[0] = 1;
}
else
{
    vspeed -= 0.1;
    with(player)
    {
        x = other.x;
        y = other.y;
        sprite_index = sprPlayerSliding;
        gravity = 0;
        speed = 0;
    }
}

