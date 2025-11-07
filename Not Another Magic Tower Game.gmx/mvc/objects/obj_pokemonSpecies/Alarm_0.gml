if(image_xscale < 1)
{
    image_xscale += 0.05;
    image_yscale += 0.05;
    alarm[0] = 1;
}
else
{
    spName = ds_list_find_value(obj_silverEvilSlime_combat.spList, image_index);
    with(obj_pokemonBattleDialog)
    {
        msg = obj_silverEvilSlime_combat.name + " is absorbing energy of '" + other.spName + "'.";
        event_user(0);
    }
    alarm[1] = 30;
}

