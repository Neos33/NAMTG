if(image_index < 21)
{
    if(image_index == 10)
    {
        sound_fix(sndClaw2);
    }
    image_index += 1;
    alarm[3] = 3;
}
else
{
    if(instance_exists(obj_orcMage_combat))
    {
        obj_orcMage_combat.alarm[6] = 1;
        obj_orcMage_combat.status = "pendingSword";
        obj_orcMage_combat.swordDelay = 20;
    }
    instance_destroy();
}

