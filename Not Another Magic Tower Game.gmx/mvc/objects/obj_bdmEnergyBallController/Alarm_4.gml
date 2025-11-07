if(ballCount > 0)
{
    ballCount -= 1;
    instance_create(obj_blackDevilMagician_combat.x, obj_blackDevilMagician_combat.y, obj_bdmEnergyBall);
    alarm[4] = 20;
}
else
{
    alarm[5] = 250;
}

