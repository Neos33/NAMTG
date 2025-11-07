with(obj_darkMage_combat2)
{
    if(y > -96)
    {
        vspeed = -8;
        other.alarm[10] = 1;
    }
    else
    {
        vspeed = 0;
        x = 400;
        other.alarm[11] = 20;
    }
}

