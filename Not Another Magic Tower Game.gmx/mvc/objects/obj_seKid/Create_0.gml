image_speed = 1/8;
vspeed = 1;
with(instance_create(x - 32, y - 96, obj_seFairy))
{
    target = other.id;
    offsetX = -32;
    offsetY = -96;
    ind = 3;
    laserX = 128;
    delay = 80;
} 

with(instance_create(x + 32, y - 96, obj_seFairy))
{
    target = other.id;
    offsetX = 32;
    offsetY = -96;
    ind = 6;
    laserX = 356;
    delay = 50;
}
ox = x;
angle = random_range(0,360);

