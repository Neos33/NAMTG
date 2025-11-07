image_angle = direction;
if(!dashStart)
{
    if(abs(x - player.x) <= 48)
    {
        dashStart = true;
        with(obj_swordMaster_combat)
        {
            tx = other.x;
            ty = other.y;
            event_user(0);
            event_user(2);
        }
    }
}
else
{
    if(!dashEnd)
    {
        if(abs(x - player.x) >= 16 || x <= 160 || x >= 640)
        {
            dashEnd = true;
            with(obj_swordMaster_combat)
            {
                tx = other.x + 16 * sign(other.direction - 90);
                ty = other.y;
                ind = 4;
                event_user(1);
                ind = 5;
            }
            speed = 0;
            alarm[0] = 1;
        }
    }
}

