if(status == 5)
{
    if(instance_number(obj_explodeBullet) == 0)
    {
        instance_destroy();
        audio_playsound(sndDeath);
        obj_combatController.alarm[0] = 50;
    }
}

if(status == 4)
{
    angle += 20 - breakTotal;
    x = 400 + 30 * cos(degtorad(angle)) - 16;
    y = 304 - 30 * sin(degtorad(angle)) - 16;
}

