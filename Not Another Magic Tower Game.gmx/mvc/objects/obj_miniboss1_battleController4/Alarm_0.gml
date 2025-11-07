rSpd = 2;
alarm[1] = 1;
with(obj_minibossBullet1)
{
     alarm[3]  = 1;
}
with(obj_miniBossGay)
{
 targetX = 400;
 targetY = 304;
 spd = 3;
 alarm[1] = 1;
}
with(obj_minibossKappa)
{
 for(var i = 0; i< 15; i+=1)
 {
  pp = instance_create(x,y,obj_smallGrayCherry);
  pp.speed = 5;
  pp.direction = i * 24;
 }
 instance_destroy();
}

