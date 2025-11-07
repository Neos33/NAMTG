sound_stop(sndThunder2);
repeat(15)
{
    instance_create(x,y,obj_silverEvilSlimeThunder);
}
sound_fix(sndCannon);
obj_silverEvilSlimeElectricController.alarm[1] = 30;
obj_silverEvilSlimeThunderDark.alarm[1] = 1;

