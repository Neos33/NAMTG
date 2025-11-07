if(type == 0)
{
    dir = angle;
}
else
{
    dir = 180 - angle;
}
 
with(instance_create(x, y, obj_tlMageBullet))
{
    direction = other.dir;
    speed = 1;
    image_angle = other.dir - 90;
    phase = 2;
    image_index = other.ind;   
}
alarm[4] = 6;

