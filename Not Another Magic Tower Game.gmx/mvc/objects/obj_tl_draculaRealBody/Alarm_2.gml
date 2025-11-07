if(thunderCount > 0)
{
    thunderCount -= 1;
    instance_create(RangeClamp(player.x, 128, 800-128), 272, obj_draculaThunderCreator);
    alarm[2] = 100;
}

