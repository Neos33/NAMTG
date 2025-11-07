if(phase == 1)
{
    rSpd = 3;
    rDir = random_range(0,359);
    for(var j = 0; j < 6; j+=1)
    {
    for(var i =0; i < 8; i+= 1)
    {
        r = instance_create(x + 112 * cos(degtorad(rStart + i * 45)),y - 112 * sin(degtorad(rStart + i * 45)), obj_beBossPhase2Bullet2);
        r.speed = rSpd;
        r.direction = rDir + j * 60;
    }
    }
    rStart -= 17;
    alarm[2] = 45;
}
else
{
    alarm[2] = 0;
}

