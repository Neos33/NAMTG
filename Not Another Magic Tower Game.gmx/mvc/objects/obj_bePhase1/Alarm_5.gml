for(i = 0; i < 12; i += 1)
{
    b = instance_create(x,y,obj_beBossPhase1Bullet2);
    b.speed = 3;
    b.direction = ang + 30 * i;
}
ang += 15;
sound_fix(snd_touhou_attack4);
if(ang mod 45 == 0)
{
    alarm[5] = 50;
}
else
{
    alarm[5] = 15;
}

