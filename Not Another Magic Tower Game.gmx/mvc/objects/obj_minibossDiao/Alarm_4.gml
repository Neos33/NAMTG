if(image_yscale < 1)
{
 image_yscale += 0.08;
 alarm[4] = 1;
}
else
{
 image_yscale = 1;
 if(pCount < 4)
 {
  for(var i=0;i<12;i+=1)
  {
   eject = instance_create(x-2,y-78,obj_lightEjectBullet);
   eject.speed = random_range(8,12);
   eject.direction = random_range(55,125);
  }
  alarm[3] = 13;
 }
 else
 {
   repeat(24)
   {
       eject = instance_create(x,y,obj_lightEjectBullet);
       eject.speed = random_range(8,12);
       eject.direction = random_range(45,135);
   }
   obj_miniboss1_battleController2.alarm[4] = 10;
   instance_destroy();
 }
}

