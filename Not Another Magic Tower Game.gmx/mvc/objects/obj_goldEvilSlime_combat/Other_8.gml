if(status == 0)
{
    instance_create(144, 256, obj_pokemonCombatPlatform);
    with(obj_pokemonBattleDialog)
    {
        msg = "But... Nothing happened...";
        event_user(0);
    }
    ind = irandom_range(0,2);
    alarm[10] = 25;
    alarm[5] = 50;
}
else
{
    alarm[6] = 1;
}

