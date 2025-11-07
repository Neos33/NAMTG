ds_list_destroy(xl);
ds_list_destroy(yl);
if(instance_number(obj_dmSummonPrototype) == 1)
{
    with(obj_darkMage_combat)
    { 
        if(hp > 80)
        {
            alarm[6] = 70;
            hp -= global.attackDamage;
            cooldown = true;
            if(global.special[8])
            {
                alarm[1] = 25;
            }
            else
            {
                alarm[1] = 50;
            }
            alarm[0] = 1;
        }
        else
        {
            sound_fix(sndBEDevilLaugh);
            alarm[11] = 80;
        }
    }
}
//instance_create(obj_darkMage_combat.x,obj_darkMage_combat.y,bullet);

