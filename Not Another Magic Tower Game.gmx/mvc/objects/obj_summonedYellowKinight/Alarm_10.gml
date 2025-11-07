if(cCount1 < 10)
{
    with(combo1[cCount1])
    {
        speed = 15;
        direction = point_direction(x,y, player.x, player.y);
    }
    cCount1 += 1;
    alarm[10] = 10;
}
else
{
    cPhase = 4;
    backupPhase = 2;
    cInterval = 50;
    cTime = 0;
}

