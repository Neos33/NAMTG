if(alpha < 1)
{
    alpha += 0.01;
    alarm[1] = 1;
}
else
{
    room_goto(rSleepingEndFinal);
}

