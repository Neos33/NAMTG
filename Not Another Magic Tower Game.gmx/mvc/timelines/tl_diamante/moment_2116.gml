a=instance_create(400,-32,obj_diaAtk4);
a.vspeed = 6;
a.alarm[3] = 1;
a.friction = cal_friction(6,80);

a.hp = obj_diaAtk3.hp;
global.combatObj = obj_diaAtk4;

with(obj_diaAtk3)
{
    instance_destroy();
}

