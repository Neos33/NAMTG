if(glodShoot)
{
    shootCount += 1;
    var glodbullet = instance_create(obj_magelv2_combat.x, obj_magelv2_combat.y, obj_mageLaser);
    glodbullet.speed = 8;
    glodbullet.direction = shootAngle;
    glodbullet.image_angle = shootAngle;
    //if(shootCount mod 3 == 0)
    //{
        shootAngle += 15;
        audio_playsound(sndLaser1);
    //}
    alarm[3] = 3;
}

