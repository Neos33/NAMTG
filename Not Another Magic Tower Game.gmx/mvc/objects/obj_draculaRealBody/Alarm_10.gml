thunderCount = 3;
meteorCount = 10;
dartsCount = 10;
if(player.x > 128 && player.x < (800 - 128))
{
    alarm[choose(0,2,3,4)] = 50;
}
else
{
    alarm[choose(3,4)] = 50;
}

