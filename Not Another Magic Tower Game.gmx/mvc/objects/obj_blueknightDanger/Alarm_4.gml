if(image_alpha > 0)
{
    image_alpha -= changeSpd;
    alarm[4] = 1;
}
else
{
    if instance_exists(obj_blueKnight_combat)
    obj_blueKnight_combat.alarm[3] = 5;
    instance_destroy();
}

