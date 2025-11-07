room_speed = 50;
alarm[0] = 0;
alarm[1] = 0;
alarm[2] = 0;
alarm[3] = 0;
dontDraw = true;
obj_dsBlackHole.stop = true;
with(obj_darkSummoner_combat)
{   
    instance_destroy();
}
ach = true;
boom = true;
with(obj_dsBlack)
{
    instance_destroy();
}

with(obj_dsWhite)
{
    instance_destroy();
}
sound_stop(sndQuake);
phase = 6;
audio_playsound(sndfasfboom);

sound_stop(snd_touhou_powerup);
sound_fix(sndfasfboom);
for(var i = 0; i < 30; i += 1)
{
    var ex = instance_create(x,y,obj_dsCBBulletExplode);
    ex.direction = i * 12;
    ex.image_speed = 0.5;
    ex.speed = 3;
}

