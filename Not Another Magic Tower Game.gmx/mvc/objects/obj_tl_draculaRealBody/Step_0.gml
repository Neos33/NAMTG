if(!start)
{
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, 0 );
    start = true;
    image_index = 1;
    left = instance_create(x - handGapX * targetScale, y + handGapY * targetScale, obj_tl_draculaHand);
    left.image_xscale *= -1;
    right = instance_create(x + handGapX * targetScale, y + handGapY * targetScale, obj_tl_draculaHand);
    alarm[10] = 15;
}
if(start)
{
    angle += 2;
    y = oy + 2 * sin(degtorad(angle));
}

if(clawHit)
{
    global.cooldown = true;
    if(abs(playerPreviousX - player.x) > 5)
    {
        playerPreviousX = player.x;
        player.hspeed = 25 * playerFlyDir;
        player.image_index =  playerFlyDir;
        player.sprite_index = sprPlayerSliding;
        player.gravity = 0;
    }
    else
    {
        player.hspeed = -2 * playerFlyDir;
        player.vspeed = 2;
        player.sprite_index = sprPlayerJump;
        player.gravity = 0.4;
        instance_create(player.x,player.y,obj_invisibleBullet);
        playerPreviousX = 0;
        shakeCountdown = 30;
        clawHit = false;
        global.cooldown = false;
        sound_fix(sndEarth1);
        alarm[11] = 1;
    }
}

