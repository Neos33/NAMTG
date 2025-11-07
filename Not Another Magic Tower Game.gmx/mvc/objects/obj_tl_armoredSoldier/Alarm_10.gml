if(y < 128)
{
    y += 5;
    alarm[10] = 1;
}
else
{
    instance_create(0,0, obj_asShockController);
}

