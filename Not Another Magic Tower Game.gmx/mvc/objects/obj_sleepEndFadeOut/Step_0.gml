if(alpha < 1)
{
    alpha += 0.02;
}
else
{
    instance_create(0,0,obj_sleepEndFadeIn);
    instance_destroy();
}


