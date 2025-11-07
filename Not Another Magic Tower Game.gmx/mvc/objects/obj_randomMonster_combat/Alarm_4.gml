x = 744;
y = 544;
//instance_create(704, 544, getRandomMonster());
monster = getRandomMonster();
print("monster selected: ", object_get_name(monster));
global.combatObj = monster;
instance_change(monster, true);
monster.hp = global.mHP;


print("global.randomMonstersKilled: ", global.randomMonstersKilled);
if(global.randomMonstersKilled < 10)
{
    global.randomMonstersKilled += 1;
}

//instance_destroy();
/*global.mHP = 50;
global.mAtk = global.attack;
global.mDef = global.defense;
global.mEx = 0;*/
//instance_destroy();
//alarm[11] = 1;

/* */
/*  */
