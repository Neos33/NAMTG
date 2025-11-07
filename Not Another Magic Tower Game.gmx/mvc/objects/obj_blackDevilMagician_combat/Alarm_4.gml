if(tCount > 0)
{
    var pp = instance_create(x,y,obj_bdmEnergyBall3);
    pp.targetX = x + choose(-1,1) * random_range(50, 200);
    pp.targetY = y + choose(-1,1) * random_range(50, 200);
    tCount -= 1;
    alarm[4] = 20;
}
else
{
    alarm[11] = 550;
}

