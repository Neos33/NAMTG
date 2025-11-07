if(alpha < 1)
{
    alpha += 0.005;
}
else
{
    with(player)
    {
        instance_destroy();
    }
    room_goto(rSleepingEnd);
}


