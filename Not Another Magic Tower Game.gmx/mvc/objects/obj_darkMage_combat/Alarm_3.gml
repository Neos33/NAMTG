if(darkCount > 0)
{
    instance_create(x,y,obj_dmDarkEnergyBall);
    darkCount -= 1;
    alarm[3] = 50;
}
else
{
    darkCount2 = 4;
    alarm[4] =50;
}

