with(other)
{
    instance_destroy();
}
if(hp > 0)
{
    hp -= round(global.shotEnergy);
    image_blend = make_color_rgb(255 - 25.5 * hp,0,0);
    sound_fix(sndBossHit);
}
else
{
    alarm[3] = 1;
}

