if(dashStep > 0)
{
    dashStep -= 1;
    player.vspeed = dashSpd;
    alarm[0] = 1;
}
else
{
    player.redKnightDash = false;
}

