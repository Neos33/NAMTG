if(global.monsters[239])
{
    spr = spr_trebole_combat;
    txt = "Mr.Trebole";
}
else
{
    spr = -1;
    txt = "???";
}
combatObj = obj_trebole_combat;
gHp = 666;
mHp = 1;
bossDmg = 100; // boss hit you
hitDmg = 1; // you hit boss
roomTo = rTrebole;
xscale = 1;
yscale = 1;