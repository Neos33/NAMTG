if(image_index < 4)
{
    image_index += 1;
    obj_asQTEPlayer.hspeed *= 2.5;
    alarm[0] = 5;
}
else
{
    instance_destroy();
}

