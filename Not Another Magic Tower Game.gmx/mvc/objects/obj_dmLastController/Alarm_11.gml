with(obj_darkMage_combat2)
{
    if(y < 128)
    {
        vspeed = 8;
        other.alarm[11] = 1;
    }
    else
    {
        vspeed = 0;
        shotGunCount = 30;
        alarm[6] = 50;
        with(other)
        {
            instance_destroy();
        }
    }
}


