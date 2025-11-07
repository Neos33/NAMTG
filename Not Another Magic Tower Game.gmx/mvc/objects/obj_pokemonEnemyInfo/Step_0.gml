if(instance_exists(obj_monsterBattlePrototype))
{
    targetHP = obj_monsterBattlePrototype.hp;
    spIndex = obj_monsterBattlePrototype.spIndex;
}
else
{
    targetHP = 0;
}
if(hp > targetHP)
{
    stepHp = floor((hp - targetHP)/10);
    if(stepHp < 1)
        stepHp = 1;
    hp -= stepHp;
}

