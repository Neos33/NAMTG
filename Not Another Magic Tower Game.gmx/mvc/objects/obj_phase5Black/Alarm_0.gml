if(image_alpha > 0)
{
    image_alpha -= 0.01;
    alarm[0] = 1;
}
else
{
    instance_create(x,y,obj_phase5Controller);
    instance_destroy();
}

