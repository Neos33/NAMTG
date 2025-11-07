shoot = false
if(instance_number(obj_smallGrayCherry) == 0)
{
    if instance_exists(obj_diaoSlime_combat)
    {
        obj_diaoSlime_combat.x = 704;
        obj_diaoSlime_combat.y = 544;
        obj_diaoSlime_combat.status = 0;
        obj_diaoSlime_combat.alarm[4] = 30;
    }
    sound_loop(choose(sndBattle1,sndBattle2));
    instance_destroy();
}
else
{
    alarm[6] = 1;
}



