if(global.monsters[229])
{
    spr = spr_corazoneCombat;
    txt = "Mr.Corazone";
}
else
{
    spr = -1;
    txt = "???";
}
combatObj = obj_corazone_combat;
gHp = 444;
mHp = 444;
bossDmg = 100; // boss hit you
hitDmg = 25; // you hit boss
roomTo = rCorazone;
xscale = 1;
yscale = 1;