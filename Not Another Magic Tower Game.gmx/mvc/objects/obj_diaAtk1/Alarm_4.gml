for(var i=0;i<5;i+=1)
{
    var a=instance_create(x,y,obj_diaBomb);
    a.gravity = 0.15;
    a.speed = random_range(4,6);
    a.direction = 30+30*i;
}

