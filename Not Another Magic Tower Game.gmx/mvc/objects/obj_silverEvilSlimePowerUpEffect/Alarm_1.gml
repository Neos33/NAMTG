if(image_index < 5)
{
    image_index += 1;
    alarm[1] = 7;
}
else
{
    image_index = 4;
    alarm[2] = 7;
    alarm[3] = 1;
    with(obj_pokemonBattleDialog)
    {
        msg = obj_silverEvilSlime_combat.name + "'s attack and defense has been incresed sharply.(ATK+5";
        event_user(0);
        msg =", DEF+1)";
        event_user(0);
    }
    global.defenseDamage += 5;
    tempDmg = global.attackDamage;
    global.attackDamage = RangeClamp(tempDmg - 1, 1, tempDmg);
}

