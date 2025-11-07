if(point_distance(targetX,targetY,x,y) < spd)
{
 x = targetX;
 y = targetY;
 hspeed = 0;
 vspeed = 0;
 if(collisionCheck)
 {
  with(obj_minibossKappa)
  {
   alarm[4] = 0;
   image_angle = 0;
  }
  alarm[2] = 0;
 }
}
else
{
 move_towards_point(targetX,targetY,spd);
 alarm[1] = 1;
}

