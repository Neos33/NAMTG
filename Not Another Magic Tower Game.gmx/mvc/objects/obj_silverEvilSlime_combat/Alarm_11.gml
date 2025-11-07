if(mixedAlpha < 1)
{
    mixedAlpha += 0.02;
    alarm[11] = 1;
}
else
{
    event_user(spIndex);
}

