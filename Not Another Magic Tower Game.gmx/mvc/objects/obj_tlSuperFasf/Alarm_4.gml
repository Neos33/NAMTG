if(time mod 3 == 1)
{
b2 = instance_create(x + lengthdir_x(7, dir + 45),y +lengthdir_y(7, dir + 45),obj_tlSuperFasfBullet1);
b2.image_index = 1;
rngAngle = 55;//random_range(30,40);
b2.direction = dir + rngAngle;
b2.image_angle = dir + rngAngle - 90;
}
else if(time mod 3 == 2)
{
b3 = instance_create(x + lengthdir_x(7, dir - 45),y +lengthdir_y(7, dir - 45),obj_tlSuperFasfBullet1);
b3.image_index = 2;
rngAngle = -55; //random_range(-40,-30);
b3.direction = dir + rngAngle;
b3.image_angle = dir + rngAngle - 90;
}
else
{
b1 = instance_create(x,y,obj_tlSuperFasfBullet1);
b1.image_index = 0;
b1.direction = dir;
b1.image_angle = dir - 90;
}
alarm[4] = 1;

