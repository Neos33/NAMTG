var p = instance_create(x,y,obj_tlSkeletonBone);
p.gravity = 0;
p.speed = 10;
p.direction = point_direction(x,y,player.x,player.y);
alarm[5] = 35;

