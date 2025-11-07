if(boomInterval > 3)
{
    var be = instance_create(x,y,obj_bsEnergyLeak);
    be.dir = random_range(0,360);
    alarm[4] = boomInterval;
    boomInterval -= 1;
}
else
{
    instance_create(x,y,obj_energyBoom);
    instance_destroy();
}

