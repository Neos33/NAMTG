image_alpha = 1;
if(blastNum < 4)
{
    if(x > 400)
    {
        var blast = instance_create(x - 48, y - 32, obj_swordwind);
        blast.hspeed = -3;
    }
    else
    {
        var blast = instance_create(x + 16, y - 32, obj_swordwind);
        blast.hspeed = 3;
    }
    blastNum += 1;
    alarm[3] = 60;
}
else
{
    alarm[4] = 30;
}

