image_speed = 1/8;
vspeed = 1;
with(instance_create(x, y - 112, obj_seFairy))
{
    target = other.id;
    offsetX = 0;
    offsetY = -112;
    ind = 7;
    laserX = 512;
    delay = 90;
} 

with(instance_create(x - 32, y - 96, obj_seFairy))
{
    target = other.id;
    offsetX = -32;
    offsetY = -96;
    ind = 5;
    laserX = 256;
    delay = 70;
} 

with(instance_create(x + 32, y - 80, obj_seFairy))
{
    target = other.id;
    offsetX = 32;
    offsetY = -80;
    ind = 4;
    laserX = 608;
    delay = 60;
}

with(instance_create(x - 64, y - 64, obj_seFairy))
{
    target = other.id;
    offsetX = -64;
    offsetY = -64;
    ind = 2;
    laserX = 320;
    delay = 30;
} 

with(instance_create(x + 64, y - 48, obj_seFairy))
{
    target = other.id;
    offsetX = 64;
    offsetY = -48;
    ind = 1;
    laserX = 400;
    delay = 1;
}
ox = x;
angle = random_range(0,360);

