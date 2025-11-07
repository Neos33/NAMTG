if(!b)
{
    b = instance_create(x,y,obj_bdmBulletBlockEffect);
    alarm[3] = 2;
}
with(other)
{
    instance_destroy();
}

