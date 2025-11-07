time += 1;
if(type == 1)
{
    if(time mod 4 == 0)
    {
        sound_fix(sndShoot);
    }
}

if(x > 400)
{
    hspeed -= 0.1;
}
else
{
    hspeed += 0.1;
}
angle += 2;

