if(shootCount > 0)
{
    shootCount -= 1;
    sound_fix(snd_touhou_attack3);
    for(var i = 0; i < 5; i += 1)
    {
        var b = instance_create(x,y,obj_dsWhiteBullet1);
        b.direction = 180 + 45 * i;
        b.speed = 4;
        b.image_index = index[i];
    }
    alarm[1] = 10;
}
else
{
    shootCount = 1//irandom_range(3,5);
    alarm[1] = 30;
}

