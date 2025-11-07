/// @description  Init
isShoot = false;
isHit = false;
fb = 0;
rnd = 0;

image_speed = 0;
with(instance_create(x,y,obj_iceNeedleHitbox))
{
    parent = other.id;
}

