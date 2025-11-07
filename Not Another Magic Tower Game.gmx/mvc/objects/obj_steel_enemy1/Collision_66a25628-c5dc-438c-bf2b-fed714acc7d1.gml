if(!instance_exists(obj_dizzy))
{
    instance_create(0,0,obj_dizzy);
    player.frozen=1;
    obj_dizzy.alarm[0]=75;
    obj_steel_combat.dizzyTimes += 1;
}

