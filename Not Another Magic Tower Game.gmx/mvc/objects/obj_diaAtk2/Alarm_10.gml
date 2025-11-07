var a=instance_create(x,y,obj_diadiamond);
a.direction = dire[count8];
a.speed = 12;
if(count8<=1)
{
    a.alarm[0] = 44*4-20;
}
a.image_angle = a.direction + 90;
a.image_index = count8*2;
a.friction = cal_friction(12,180);
count8 += 1;
if(count8<4)
{
    alarm[10] = 44;
}

