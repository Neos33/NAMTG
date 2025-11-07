m = instance_create(-500, -500, global.combatObj);
m.hp = global.mHP;
m.atk = global.mAtk;
m.def = global.mDef;
m.ex = global.mEx;
global.cooldown = false;

if(global.GalleryBossFight)
{
    global.playerHP = global.hp;
}
else
{
    global.playerHP = global.GalleryBossFightHp;
}
global.combatTime = 0;

