b = instance_create(x,y,obj_tlStartBurningBall);
dir = abs(90 - point_direction(x,y,400,-200));
dis = floor(y/50)+4;
b.speed = random_range(dis-1,dis+1);
b.direction = random_range(90-dir,90+dir);
alarm[3] = 5;

