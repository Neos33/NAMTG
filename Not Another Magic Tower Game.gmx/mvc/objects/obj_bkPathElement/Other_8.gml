if(instance_exists(obj_burningKnight_combat))
{
    interval = 15 + 15 * obj_burningKnight_combat.hp / obj_burningKnight_combat.oHP;
}
else
{
    interval = 15;
}
alarm[4] = interval;

