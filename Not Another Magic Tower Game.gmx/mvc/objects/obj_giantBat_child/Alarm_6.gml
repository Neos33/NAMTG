var scale = random_range(0.6,1.2);
var b = instance_create(x,y,obj_giantBatBullet1);
b.speed = random_range(3,5);
b.direction = random_range(0,360);
b.image_xscale = scale;
b.image_yscale = scale;
alarm[6] = 5;

