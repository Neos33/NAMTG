if(image_index < 18)
{
    if(image_index == 5)
    {
        audio_playsound(sndCannon);
        instance_create(x,y,view_shaker1);
    }
    image_index += 1;
    alarm[3] = 3;
}
else
{
    obj_magicianlv1_combat.alarm[10] = 20;
    instance_destroy();
}

