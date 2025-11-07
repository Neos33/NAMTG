var a=instance_create(x,y,obj_finalBossBullet);
a.speed=10;
a.friction=0.4;
a.image_xscale=0.5;
a.image_yscale=0.5;
a.direction=point_direction(x,y,obj_finalPlane.x,obj_finalPlane.y)+random_range(-80,80);
a.alarm[0]=1;
a.dirspd=random_range(-2,2)

