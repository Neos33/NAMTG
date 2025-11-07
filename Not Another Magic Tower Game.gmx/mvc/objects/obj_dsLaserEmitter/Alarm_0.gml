var laser = instance_create(x,y,obj_dsLaser);
laser.direction = startAngle;
laser.image_angle = startAngle;
laser.speed = 2;
startAngle += stepAngle;
alarm[0] = 4;

