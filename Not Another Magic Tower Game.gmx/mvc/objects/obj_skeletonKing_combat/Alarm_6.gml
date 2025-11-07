isShake = false;
if(jumpCount < 3)
{
    //if instance_exists(player)
    {
        phase = 2;
        targetX = player.x;
        targetY = 200;
        jumpCount += 1;
        alarm[4] = 1;
    }
}
else
{
    alarm[4] = 1;
    alarm[7] = 1;
    phase = 4;
}

