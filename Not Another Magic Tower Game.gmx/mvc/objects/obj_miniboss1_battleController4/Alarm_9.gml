for(var i = 0; i < 12; i+=1)
{
 b2 = instance_create(592,304,obj_minibossBullet2);
 b2.speed = 8;
 b2.direction = i * 30;
}
with(obj_pathKappa)
{
 if(x == 592)
 {
  instance_destroy();
 }
}
instance_create(0,0,obj_blinkBlack);
alarm[10] = 20;

