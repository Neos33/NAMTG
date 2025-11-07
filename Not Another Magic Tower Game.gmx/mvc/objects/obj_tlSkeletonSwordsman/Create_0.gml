image_speed = 1/8;
x = 400 + sign(x - player.x)*196;
y = 352;
image_xscale = sign(x - 400);
height = 0;
instance_create(x,y,obj_tlSkeletonSwordTrace);
event_inherited();


sword = false;

