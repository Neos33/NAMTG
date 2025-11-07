if(status == 1)
{
    time += 1;
    dis = floor(abs(x-400) / 100);
    if(dis == 0)
    {
        dis = 1;
    }
    if(time mod 4 == 0)
    {
        audio_playsound(sndShoot);
    }
    repeat(round(1.5 / dis))
    {
        dir = irandom_range(0, 359);
        b = instance_create(x + 16, y + 16, obj_magelv1_bullet1);
        b.direction = dir;
        b.speed = 5;
        b.image_angle = dir - 90;
        b.phase = 1;
        b.image_index = irandom_range(0, 14);
    }
    if(x > 400)
    {
        hspeed -= 0.2;
    }
    else
    {
        hspeed += 0.2;
    }
    if(hspeed == 0)
    {
        hCount += 1;
    }
    if(hCount == 2)
    {
        hspeed = 0;
        status = -1;
        alarm[3] = 50;
    }
}

if(status == 2)
{
    if(abs(y-512) > 3)
    {
        y += 3;
    }
    else
    {
        y = 512;
        status = -1;
        alarm[4] = 20;
    }
}

if(status == 3)
{
    width = 32;
    if(ang mod 20 == 0)
    {
        audio_playsound(sndShoot);
    }
    gap = width * cos(degtorad(ang));
    p1 = instance_create(x, y - width - 16 + gap, obj_magelv1_bullet2);
    p1.image_angle = 90 * sign(x + 16 - player.x);
    p1.image_index = floor((ang mod 360) / 24);
    p1.hspeed = -5 * sign(x + 16 - player.x);
    p2 = instance_create(x, y + 32  + 16 + width - gap, obj_magelv1_bullet2);
    p2.image_angle = 90 * sign(x + 16 - player.x);
    p2.image_index = floor((ang mod 360) / 24);
    p2.hspeed = -5 * sign(x + 16 - player.x);
    ang += 5;
}

if(status == 4)
{
    hspeed += stepSpd;
}

