if(waterBulletNum mod 3 == 0)
{
    audio_playsound(sndShoot);
}
if(instance_exists(obj_magelv2_combat))
{
    var waterBullet = instance_create(obj_magelv2_combat.x, obj_magelv2_combat.y, obj_waterBullet);
    waterBullet.speed = 12;
    waterBullet.direction = waterBulletAngle;
    waterBulletAngle += 3;
    waterBulletNum += 1;
}

if(waterShoot)
{
    alarm[2] = 2;
}

