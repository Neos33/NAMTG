fCount += 1;
fAng += 15;
if(fCount < 7)
{
 num = 12;
}
else
{
 num = 20;
}
repeat(num)
{
 b = instance_create(x,y,obj_lightBulletRotate);
 b.type = rType;
 b.speed = 6;
 b.direction = fAng;
 fAng += 360 / num;
}
if(fCount < 7)
{
 alarm[5] = 19;
}
else
{
 if(!instance_exists(obj_miniboss1_battleController3))
 {
  instance_create(0,0,obj_miniboss1_battleController3);
 }
 with(obj_miniboss1_battleController2)
 {
  instance_destroy();
 }
 instance_destroy();
}

