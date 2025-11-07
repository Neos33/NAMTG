if(phase == 1)
{
    bSpd = 6;
    bDir += 37;
    bStart = random_range(0,359);
    for(var j = 0; j < 6; j+=1)
    {
    for(var i =0; i < 8; i+= 1)
    {
        b = instance_create(x + 24 * cos(degtorad(bStart + i * 45)),y - 24 * sin(degtorad(bStart + i * 45)), obj_beBossPhase2Bullet1);
        b.speed = bSpd;
        b.direction = bDir + 60 * j;
    }
    }
    //bStart += 37;

    sound_fix(snd_touhou_attack4);
    p1Count += 1;
    alarm[1] = 25;
}
else
{
    alarm[1] = 0;
}

