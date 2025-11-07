if(image_index < 14)
{
    image_index += 1;
    if(image_index == 10)
    {
        obj_orcMage_combat.x = 400;
        obj_orcMage_combat.y = 302;
        obj_orcMage_combat.alarm[3] = 1;
    }
    alarm[0] = 5;
}
else
{    
    alarm[1] = 5;
}

