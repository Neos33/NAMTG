if(dartsCount > 0)
{
    dartsCount -= 1;
    darts = instance_create(x,y,obj_draculaDarts);
    darts.targetX = random_range(336,464);
    darts.targetY = 272;
    alarm[4] = 15;
}
else
{
    alarm[10] = 50;
}

