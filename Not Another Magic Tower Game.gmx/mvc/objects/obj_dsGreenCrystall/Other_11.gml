sound_stop(snd_touhou_powerup);
sound_fix(sndfasfboom);
for(var i = 0; i < 30; i += 1)
{
    var ex = instance_create(x,y,obj_dsCBBulletExplode);
    ex.direction = i * 12;
    ex.image_index = 5;
}
instance_destroy();

