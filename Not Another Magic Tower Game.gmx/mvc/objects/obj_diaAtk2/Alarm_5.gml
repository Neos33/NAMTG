image_angle = 0;
x = 400;
y = 128;

for(var i=0;i<9;i+=1)
{
    var a=instance_create(x,y,obj_diaPoker);
    a.ATK = 5;
    a.speed = 2+i/2;
    a.direction = 330 - 15*i;
    a.dir = a.direction;
    a.friction = cal_friction(6,360);
    a.alarm[4] = 111;
    a.image_angle = a.direction;
    a.img = 1;
}

alarm[6] = 96;

