aa=instance_create(x,y,obj_cherry_black)
with(aa)
{
    speed=random_range(4,6);
    direction= 90 + sign(x-400) * random_range(15,90);
    gravity=0.1;
}
if(i<15)
{
    i+=1;
    alarm[3]=6;
}
else
{
    instance_destroy();
}

