if(rotateCount < 13)
{
 if(rotateCount mod 2 == 1)
 {
  rGay = instance_create(64, 60, obj_pathKappa);
  rGay.path = path_light3_2;
 }
 else
 {
  rGay = instance_create(728, 60, obj_pathKappa);
  rGay.path = path_light3_1;
 }
 if(rotateCount >= 9)
 {
  rGay.special = true;
  if(rotateCount == 9)
  {
   rGay.targetX = 304;
   rGay.targetY = 304;
   rGay.spd = 4;
  }
  else if(rotateCount == 10)
  {
   rGay.targetX = 496;
   rGay.targetY = 304;
   rGay.spd = 4;
  }
  else if(rotateCount == 11)
  {
   rGay.targetX = 208;
   rGay.targetY = 304;
   rGay.spd = 6;
  }
  else if(rotateCount == 12)
  {
   rGay.targetX = 592;
   rGay.targetY = 304;
   rGay.spd = 6;
  }
 }
 
 rotateCount += 1;
 alarm[4] = 15;
}

