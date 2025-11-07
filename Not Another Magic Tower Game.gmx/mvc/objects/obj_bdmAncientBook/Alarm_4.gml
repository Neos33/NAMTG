if(point_distance(x,y,obj_blackDevilMagician_combat.x, obj_blackDevilMagician_combat.y) <= spd)
{
    instance_create(x,y,obj_bdmBulletBlockEffect);
    instance_destroy();
}
else
{
    instance_create(x,y,obj_hitEffect);
    alarm[4] = 1;
}

