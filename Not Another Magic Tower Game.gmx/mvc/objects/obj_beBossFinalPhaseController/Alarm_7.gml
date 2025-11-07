instance_create(400 + random_range(-300, 300), 304 + random_range(-150,150), obj_spellCardClearEffect);
sound_fix(snd_touhou_attack3);
finalEndCount += 1;
if(finalEndCount < 15)
{
    alarm[7] = 8;
}
else
{
    phase = 4;
}

