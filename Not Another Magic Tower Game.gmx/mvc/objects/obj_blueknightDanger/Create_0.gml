image_xscale = 1.2;
image_yscale = 1.2;
changeSpd = 0.03;
image_alpha = 0;
if instance_exists(obj_blueKnight_combat)
{
    if(obj_blueKnight_combat.notFirstRound)
    {
        alarm[0] = 70;
        alarm[11] =69;
    }
    else
    {
        alarm[0] = 30;
        alarm[11] =29;
    }

}

