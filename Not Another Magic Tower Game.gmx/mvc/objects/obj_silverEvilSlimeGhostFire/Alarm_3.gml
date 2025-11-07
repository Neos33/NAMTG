if(mixedAlpha < 1)
{
    mixedAlpha += 0.01;
    alarm[3] = 1;
}
else
{
    instance_create(x,y,obj_supfasfboom);
    instance_destroy();
}

