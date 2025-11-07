if(point_distance(targetX,targetY,x,y) < spd)
{
 x = targetX;
 y = targetY;
 hspeed = 0;
 vspeed = 0;
 if(kissGay)
 {
  kissGay = false;
  with(obj_minibossKappa)
  {
      gayHeart = instance_create(x + sign(image_xscale) * 10, y - 5, obj_gayHeart);
      gayHeart.vspeed = -2;
      gayHeart.hspeed = -0.5 * sign(image_xscale);
  }
  with obj_miniboss1_battleController3 alarm[11] = 30;
  with obj_miniboss1_battleController6 alarm[11] = 30;
  if instance_exists(obj_miniBossGay)
  {
      obj_miniBossGay.alarm[2] = 0;
      obj_miniBossGay.image_index = 2;
  }
 }
}
else
{
 move_towards_point(targetX,targetY,spd);
 alarm[1] = 1;
}

