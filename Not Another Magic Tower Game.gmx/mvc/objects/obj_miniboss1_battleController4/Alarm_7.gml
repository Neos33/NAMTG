for(var i = 0; i < 12; i+=1)
{
 b2 = instance_create(400,304,obj_minibossBullet2);
 b2.speed = 10;
 b2.direction = i * 30;
}
with(obj_miniBossGay)
{
  instance_destroy();
}
instance_create(0,0,obj_blinkBlack);
alarm[8] = 10;

