if(global.monsters[212])
{
    spr = spr_diamante_combat;
    txt = "Mr.Diamante";
}
else
{
    spr = -1;
    txt = "???";
}
combatObj = obj_diamante_combat;
gHp = 444;
mHp = 444;
bossDmg = 100; // boss hit you
hitDmg = 25; // you hit boss
roomTo = rDiamante;
xscale = 1;
yscale = 1;