if(image_index < 14)
{
    image_index += 1;
    if(image_index == 10)
    {
        if instance_exists(obj_blueKnight_combat)
        {
            obj_blueKnight_combat.x = 700;
            obj_blueKnight_combat.y = 502;
            obj_blueKnight_combat.alarm[5] = 10;
         }
    }
    alarm[0] = 5;
}
else
{    
    alarm[1] = 5;
}

