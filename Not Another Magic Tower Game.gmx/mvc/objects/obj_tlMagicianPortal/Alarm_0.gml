var aa = instance_create(x,y, obj_tlMagicianBullet);
aa.direction = random_range(minAngle,maxAngle);
aa.image_speed = 0;
aa.image_index = irandom_range(0,14);
if(abs(aa.direction - 90) < 20)
{
    aa.speed = random_range(12,14);
}
else
{
    aa.speed = random_range(10,12);
}
aa.gravity = 0.15;
if(type == 0)
{
    sound_fix(sndShoot);
}
alarm[0] = 3;


