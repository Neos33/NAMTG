obj_silverEvilSlime_combat.x = ox;
obj_silverEvilSlime_combat.y = oy;
obj_silverEvilSlime_combat.alarm[10] = 1;
with(obj_pokemonBattleDialog)
{
    msg = obj_silverEvilSlime_combat.name + " loses the power of 'Water'";
    event_user(0);
}

