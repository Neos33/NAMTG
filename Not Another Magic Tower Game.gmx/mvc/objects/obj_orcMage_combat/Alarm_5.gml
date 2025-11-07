thunderCount += 1;
instance_create(player.x + random_range(-10, 10), 576 - 30, obj_thunderTarget);
if(thunderCount < 7)
{
    alarm[5] = 40;
}
else
{
    targetX = choose(32, 768);
    targetY = 560;
    alarm[6] = 70;   
}

