if(!burst)
{
    direction += stepDir;
}
image_angle = direction;
var tail = instance_create(x,y,obj_dragonStartBulletTail);
tail.sprite_index = sprite_index;
tail.image_index = image_index;
tail.image_speed = 0;
tail.image_alpha = 0.5;
tail.image_angle = image_angle;
tail.depth = depth + 1;

