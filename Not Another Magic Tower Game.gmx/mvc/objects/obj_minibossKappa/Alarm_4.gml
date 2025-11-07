if(rotateType == 0)
{
     image_angle += 5;
     if(rBulletCoolDown mod 3 == 0)
     {
         rb = instance_create(x,y,obj_smallGrayCherry);
         rb.speed = 5;
         rb.direction = 90 + 5 * (rBulletCoolDown + 1)
     }
}
else
{
     image_angle -= 5;
     if(rBulletCoolDown mod 3 == 0)
     {
         rb = instance_create(x,y,obj_smallGrayCherry);
         rb.speed = 5;
         rb.direction = 90 - 5 * (rBulletCoolDown + 1)
     }
}

rBulletCoolDown += 1;
alarm[4] = 1;

