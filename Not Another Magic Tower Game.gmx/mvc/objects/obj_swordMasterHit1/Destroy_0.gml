if(instance_exists(obj_swordMaster_combat))
{
    var boom = instance_create(obj_swordMaster_combat.x, y + 8, obj_swordMasterBoomEffect);
    boom.ind = ind; 
}



