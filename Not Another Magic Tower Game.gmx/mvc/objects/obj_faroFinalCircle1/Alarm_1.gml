angle = random_range(0,360);
for(i = 0; i < 8; i+=1)
{
    b = instance_create(x,y,obj_faroStartBullet);
    b.speed = 6;
    b.direction = 45 * i + angle;
}
alarm[0] = 1;

