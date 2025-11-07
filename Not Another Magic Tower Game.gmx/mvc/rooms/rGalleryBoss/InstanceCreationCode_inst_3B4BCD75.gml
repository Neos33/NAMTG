if(global.monsters[205])
{
    spr = spr_faShiLiu_combat;
    txt = "FaShiLiu";
}
else
{
    spr = -1;
    txt = "???";
}
combatObj = obj_faShiLiu_combat;
gHp = 1;
mHp = 666;
bossDmg = 9999; // boss hit you
hitDmg = 30; // you hit boss
roomTo = rFaShiliu01;
xscale = 0.5;
yscale = 0.5;