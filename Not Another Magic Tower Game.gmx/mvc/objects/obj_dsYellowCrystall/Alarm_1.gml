alarm[0] = 0;
alarm[10] = 1;
alarm[11] = 40;
over = true;
if(!obj_darkSummoner_combat.crazy)
{
    obj_darkSummoner_combat.alarm[3] = 150;
}
else
{
    event_user(10);
}
sound_fix(snd_touhou_powerup);
exit;

