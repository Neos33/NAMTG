if(vspeed < 8)
{
    vspeed += 0.7;
}
else
{
    vspeed = 8;
}
if(keyboard_check_pressed(global.jumpbutton))
{
    vspeed = -8;
}

if(keyboard_check_pressed(global.shotbutton))
{
    if(instance_number(bullet) < 4)
    {
        sound_fix(sndShoot);
        b = instance_create(x,y,bullet);
        b.hspeed = 16;
    }
}

