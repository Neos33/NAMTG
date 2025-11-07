ind = choose(3,4);
m = instance_create(-16, 176, obj_tdController.tdMonster[ind]);
m.path = obj_monsterBattlePrototype.tdPath;
m.spd = obj_tdController.tdSpd[ind];
m.atk = obj_darkLord_combat.atk;
m.def = obj_darkLord_combat.def;
m.hp = obj_tdController.tdMHP[ind];
m.fullHp = obj_tdController.tdMHP[ind];
m.fullHp /= 2;
m.hp /= 2;
m.ind = -1;
m.mInd = -1;
with(m)
{
    event_user(10);
}

