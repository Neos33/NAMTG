for(var i = 0; i < 3; i += 1)
{
    p = instance_create(x + 45 * cos(degtorad(90 + 120 * i)),  y - 45 * sin(degtorad(90 + 120 * i)), obj_draculaMeteor2);
    p.rad = 45;
    p.dir = 90 + 120 * i;
    p.cx = x;
    p.cy = y;
    with(p)
    {
        event_user(0);
    }
}
sound_play(sndBurst1);
alarm[11] = 80;

