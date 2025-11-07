var randomAng = random_range(0,45);
for(var i = 0; i < 8; i += 1)
{
    var p = instance_create(x,y, obj_silverEvilSlimeWaterBullet);
    p.speed = 7;
    p.direction = randomAng + 45 * i;
    p.image_angle = randomAng + 45 * i + 180;
}
audio_playsound(sndWater1);
instance_destroy();

