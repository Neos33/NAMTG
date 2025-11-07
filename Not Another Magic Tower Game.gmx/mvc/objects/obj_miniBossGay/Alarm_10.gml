rx = choose(0, 800);
ry = random_range(200,576);
tBullet = instance_create(rx,ry,obj_minibossBullet1)
if(rx == 0)
{
 tBullet.speed = random_range(3,7);
 tBullet.direction = 0;
}
else
{
 tBullet.speed = random_range(3,7);
 tBullet.direction = 180;
}
alarm[10] = 4;

