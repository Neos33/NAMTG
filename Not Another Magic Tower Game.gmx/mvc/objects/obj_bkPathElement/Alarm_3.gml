if(instance_exists(obj_burningKnight_combat))
{
    pSpd = 25 + 10 * obj_burningKnight_combat.oHP / obj_burningKnight_combat.hp;
}
else
{
    pSpd = 125;
}
path_start(path,pSpd,0,1);

