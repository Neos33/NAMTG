var bb = instance_create(x,y,obj_magicianlv2Bullet);
bb.speed = 6;
bb.direction = random_range(0,180);
bb.spd = 6;
bb.status = 1;
if(bb.direction > 90)
{
    bb.targetX = 100;
}
else
{
    bb.targetX = 700;
}
bb.targetY = 100;
bulletCount += 1;

if(bulletCount mod 3 == 0)
{
    audio_playsound(sndShoot);
}
if(bulletCount < 180)
{
    alarm[6] = 1;
}
else
{
    alarm[7] = 100;
}

