a=instance_create(100,-64,obj_diaAtk3);
a.speed = 24;
a.direction = point_direction(x,y,player.x,player.y)-30;//290;

a.hp = obj_diaAtk2.hp;
global.combatObj = obj_diaAtk3;

with(obj_diaAtk2)
{
    instance_destroy();
}

