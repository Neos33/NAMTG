if(place_meeting(x,y,player))
{
    sprite_index = spr2;
    countdown = timeLimit;
    with(obj_spaceDoor)
    {
        if(ind == other.ind)
        {
            if(status != 1)
            {
                status = 1;
                sprite_index = spr_spaceDoorOpen;
                alarm[0] = 5;
                alarm[1] = 0;
                solid = false;
               // object_set_parent(id, noone);
                sound_fix(sndLight1);
            }
        }
    }
    if(room == rSpace10)
    {
        with(obj_conveyor)
        {
            if(!inited)
            {
                event_user(0);
            }
        }
    }
}
else
{
    if(countdown > 0)
    {
        countdown -= 1;
    }
    else
    {
        sprite_index = spr1;
        with(obj_spaceDoor)
        {
            if(ind == other.ind)
            {
                if(status != 0)
                {
                    status = 0;
                    sprite_index = spr_spaceDoorClosed;
                    alarm[1] = 5;
                    alarm[0] = 0;
                    solid = true;
                    //object_set_parent(id, block);
                    sound_fix(sndDark4);
                }
            }
        }
    }
}

