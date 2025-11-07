with(obj_diaDanmaku)
{
    direction=point_direction(player.x,player.y,x,y);image_angle=direction;speed=20;
    
}
at4 = false;
var m_hp = obj_diaAtk4.hp;
with(obj_diaAtk4)
{
    instance_destroy();
}
a=instance_create(400,-32,obj_diaAtk4);
a.vspeed=8;
a.hp = m_hp;
a.hasAch = true;
a.friction=cal_friction(a.vspeed,96);
a.at2=true;

