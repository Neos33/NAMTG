if(global.monsters[317])
{
    spr = spr_devilLead_combat;
    txt = "Tower Lead";
}
else
{
    spr = -1;
    txt = "???";
}
combatObj = obj_demonLead_combat;
gHp = 1000;
mHp = 6666;
bossDmg = 125; // boss hit you
hitDmg = 19; // you hit boss
roomTo = rDemonLead;
xscale = 1;
yscale = 1;