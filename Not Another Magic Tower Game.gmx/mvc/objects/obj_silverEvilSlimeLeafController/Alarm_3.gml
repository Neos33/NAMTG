obj_silverEvilSlime_combat.alarm[10] = 1;
with(obj_pokemonBattleDialog)
{
    msg = obj_silverEvilSlime_combat.name + " loses the power of 'Grass'";
    event_user(0);
}
instance_destroy();

