if(image_alpha > 0)
{
    image_alpha -= changeSpd;
    alarm[4] = 1;
}
else
{
    instance_activate_all();
    alarm[5] = 1;
}

