if(fireballShot > 0)
{
    fireballShot -= 1;
    blank = irandom_range(0,4)
    for(var i = 0; i < 5; i += 1)
    {
        if(i == blank)
        {
            continue;
        }
        pDir = sign(player.x - x);
        p = instance_create(x + pDir * 10,y - 20,obj_draculaFireball);
        p.image_angle = 270 * 90 * pDir;
        p.hspeed = 4 * pDir;
        p.targetY = y - 20 + (i - 2) * 40;
        p.stepY = (i - 2) * 40 / 50;
    }
    sound_play(sndFire1);
    alarm[7] = 35;
}
else
{
    alarm[11] = 40;
}

