if(shotGunCount > 0)
{
    if(shotGunCount mod 3 == 0)
    {
        sound_fix(snd_touhou_twinkle3);
    }
    instance_create(x,y,obj_dmDarkBullet);
    shotGunCount -= 1;
    alarm[6] = 5;
}
else
{
    if(player_is_alive())
    {
        sound_fix(snd_touhou_caution);
        alarm[7] = 30;
    }
}

