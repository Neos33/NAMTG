alarm[7] = 0;
for(var i=0;i<9;i+=1)
{
    var a=instance_create(x,y,obj_diaPoker);
    a.ATK = 5;
    a.image_index = 1;
    a.speed = 2+i/2;
    a.direction = 210 + 15*i;
    a.dir = a.direction;
    a.friction = cal_friction(6,360);
    a.alarm[4] = 121;
    a.image_angle = a.direction;
    a.img = 3;
}

