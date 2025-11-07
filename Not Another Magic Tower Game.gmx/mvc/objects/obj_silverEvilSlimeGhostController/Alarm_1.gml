alarm[0] = 0;
if(!instance_exists(obj_silverEvilSlimeGhostFire))
{
    obj_silverEvilSlime_combat.alarm[10] = 1;
    with(obj_pokemonBattleDialog)
    {
        msg = obj_silverEvilSlime_combat.name + " loses the power of 'Ghost'";
        event_user(0);
    }
    instance_destroy();
}
else
{
    alarm[1] = 1;
}

