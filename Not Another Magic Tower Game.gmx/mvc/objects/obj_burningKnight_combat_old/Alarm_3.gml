if(fireBallCount > 0)
{
    instance_create(x,y,obj_bkFireBall1);
    fireBallCount -= 1;
    alarm[3] = 3;
}
else
{
    multiShotRound = 4;
    alarm[4] = 50;
}
/*if(beamCount > 0)
{
    ry = oy + random_range(-128,16);
    if(x > player.x)
    {
        b = instance_create(x - 16, ry, obj_bkShot);
        b.image_xscale = 1;
    }
    else
    {
        b = instance_create(x + 16, ry, obj_bkShot);
        b.image_xscale = -1;
    }
    y = ry;
    beamCount -= 1;
    alarm[3] = 20;
}
else
{
    y = oy;
    alarm[4] = 30;
}

/* */
/*  */
