if(!collision)
{
    collision = true;
    gravity = 0;
    speed = 0;
    child.vspeed = 0;
    child.gravity = 0;
    if(x < 400)
    {
        sound_fix(sndEarth1);
    }
    alarm[3] = 50;
}

