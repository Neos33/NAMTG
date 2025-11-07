sound_fix(snd_touhou_spellcard);
with(obj_finalDiamanteE1)
{
    temp_dirspd = dirspd;
    dirspd = 0;
    alarm[1] = 0;
}
with(obj_finalDiamanteB1)
{
    temp_speed = speed;
    temp_direction = direction;
    temp_dirspd = dirspd;
    speed = 0;
    dirspd = 0;
}

x = 800;
y = 576;

vspeed = -10;
alarm[0] = 40;
alarm[1] = 80;


timer = 0;

