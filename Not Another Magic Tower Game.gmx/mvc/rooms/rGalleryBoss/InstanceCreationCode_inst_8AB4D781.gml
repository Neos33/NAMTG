if(global.monsters[219])
{
    spr = spr_pica_combat;
    txt = "Mr.Pica";
}
else
{
    spr = -1;
    txt = "???";
}
combatObj = obj_pica_combat;
gHp = 666;
mHp = 1;
bossDmg = 100; // boss hit you
hitDmg = 1; // you hit boss
roomTo = rPica;
xscale = 1;
yscale = 1;