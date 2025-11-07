if(dashCount < 5)
{
    targetX = choose(16,784);
    targetY = player.y;
}
else
{
    targetX = 400;
    targetY = 304;
}
audio_playsound(sndTeleport);
phase = 5;

