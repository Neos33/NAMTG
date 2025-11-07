//if(!blocked)
//{
    if(keyboard_check_direct(global.jumpbutton))
    {
        if(angle <= 45)
        {
            angle += stepAngle;
        }
        else
        {
            angle = 45;
        }
    }
    else
    {
        if(angle >= -30)
        {
            angle -= stepAngle;
        }
        else
        {
            angle = -30;
        }
    }
//}

image_angle = angle;
vspeed = -13 * sin(degtorad(0.9 * angle));



if(keyboard_check_pressed(global.shotbutton))
{
    if(instance_number(bullet) < 4)
    {
        sound_fix(sndShoot);
        b = instance_create(x,y,bullet);
        b.hspeed = 16;
    }
}

