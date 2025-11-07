if(player.x > 400)
{
    right.image_alpha = 0;
    claw = instance_create(right.x,right.y,obj_draculaClaw);
    claw.targetX1 = right.x + 20;
    claw.targetX2 = right.x - 400;
    if(player.y > 440)
    {
        claw.targetY = 496;
    }
    else
    {
        claw.targetY = 384;
    }
    clawType = 1;
    playerFlyDir = -1;
}
else
{
    left.image_alpha = 0;
    claw = instance_create(left.x,left.y,obj_draculaClaw);
    claw.targetX1 = left.x - 20;
    claw.targetX2 = left.x + 400;
    if(player.y > 440)
    {
        claw.targetY = 496;
    }
    else
    {
        claw.targetY = 384;
    }
    claw.image_xscale *= -1;
    clawType = 0;
    playerFlyDir = 1;
}

