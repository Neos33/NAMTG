image_speed = 0.7;
if(global.PowerAmplifier)
{
    scale = 0.16; //0.16;
}
else
{
    scale = 1/4;
}
image_xscale = scale*global.shotEnergy;
image_yscale = scale*global.shotEnergy;
sound_fix(snd_touhou_powerup);

