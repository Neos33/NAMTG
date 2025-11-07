if(collision && collisionCoolDown)
{
 if(hspeed != 0)
 {  
  other.hspeed = hspeed;
  hspeed = 0;
  move = false;
  other.move = true;
  image_index = 2;
  alarm[7] = 20;
 }
 else
 {
  move = true;
  hspeed = other.hspeed;
  other.hspeed = 0;
 }
 collisionCoolDown = false;
 alarm[8] = 10;
}

