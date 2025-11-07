alarm[0] = 15;
var a = instance_create(x,y,obj_taisaLaser);
a.image_angle = dir;
dir += 47;
count += 1;

if(count == 4)
{
    instance_destroy();
}

