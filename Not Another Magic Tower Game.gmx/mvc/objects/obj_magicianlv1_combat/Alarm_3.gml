var aa = instance_create(x + 16 + 16 * cos(degtorad(-90 + angle)), y + 16 - 16 * sin(degtorad(-90 + angle)), obj_magicianBullet);
aa.speed = 10;
aa.direction = -90 + angle;
var bb = instance_create(x + 16 + 16 * cos(degtorad(270 - angle)), y + 16 - 16 * sin(degtorad(270 - angle)), obj_magicianBullet);
bb.speed = 10;
bb.direction = 270 - angle;
if(angle < 1440)
{
    angle += 11;
    alarm[3] = 2;
    audio_playsound(sndShoot);
}
else
{
    angle = 30;
    alarm[4] = 75;
}

