if(mixedAlpha > 0)
{
    mixedAlpha -= 0.02;
    alarm[10] = 1;
}
else
{
    sp = "Normal";
    instance_create(144, 256, obj_pokemonCombatPlatform);
}

