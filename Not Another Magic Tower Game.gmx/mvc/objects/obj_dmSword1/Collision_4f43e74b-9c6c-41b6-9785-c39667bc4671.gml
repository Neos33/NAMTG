if(vspeed > 0)
{
    vspeed -= 0.2;
}
else
{
    vspeed = 0;
}
hit = true;
if(!sound)
{
    sound_fix(sndEarth1);
    sound = true;
}

