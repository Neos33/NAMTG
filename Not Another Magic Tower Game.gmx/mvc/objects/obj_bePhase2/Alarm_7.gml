sound_fix(snd_touhou_attack3);
alarm[7] = 5;
if(!player_is_alive())
{
    alarm[7] = 0;
}
else
{
    alarm[7] = 5;
}

