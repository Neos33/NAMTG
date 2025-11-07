x=-32;
y=-32;

var aa=instance_create(770,587,obj_blueknight_sword);
aa.direction=point_direction(aa.x,aa.y,0,0);
aa.speed=28;
var ab=instance_create(770,557,obj_blueknight_sword);
ab.direction=point_direction(ab.x,ab.y,0,0);
ab.speed=28;
var ac=instance_create(30,587,obj_blueknight_sword);
ac.direction=point_direction(ac.x,ac.y,800,0);
ac.speed=28
var ad=instance_create(30,557,obj_blueknight_sword);
ad.direction=point_direction(ad.x,ad.y,800,0);
ad.speed=28
var ae=instance_create(400,10,obj_blueknight_sword);
ae.vspeed=28;
var af=instance_create(10,300,obj_blueknight_sword);
af.hspeed=28;
with(obj_blueknightcherry)friction=0.1;
alarm[11]=20;

