var rng = choose(0,1);
var m_hp = 100;
if instance_exists(obj_diaAtk4)
    m_hp = obj_diaAtk4.hp;
with(obj_diaAtk4)
{
    instance_destroy();
}
   
if(rng==0)
{
    a=instance_create(0,480,obj_diaAtk4);    
    a.hspeed=5;
}
else
{
    a=instance_create(800,480,obj_diaAtk4);    
    a.hspeed=-5;
}
a.hp = m_hp;
a.vspeed=1;
a.wrap=1;
a.go=1;
a.alarm[7]=240;

