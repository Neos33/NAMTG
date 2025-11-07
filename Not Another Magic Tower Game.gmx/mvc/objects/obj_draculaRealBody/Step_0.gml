if(image_xscale < targetScale)
{
    image_xscale += 0.05;
    image_yscale += 0.05;
    __view_set( e__VW.XView, 0, random_range(-3,3) );
    __view_set( e__VW.YView, 0, random_range(-3,3) );
}
else if(!start)
{
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, 0 );
    start = true;
    image_index = 1;
    left = instance_create(x - handGapX * targetScale, y + handGapY * targetScale, obj_draculaHand);
    left.image_xscale *= -1;
    right = instance_create(x + handGapX * targetScale, y + handGapY * targetScale, obj_draculaHand);
    obj_dracula_combat.image_alpha = 1;
    obj_dracula_combat.sprite_index = spr_draculaRealHeart;
    obj_dracula_combat.image_speed = 0.5;
    obj_dracula_combat.image_xscale = targetScale;
    obj_dracula_combat.image_yscale = targetScale;
    obj_dracula_combat.transformStart = false;
    sound_stop(sndQuake);
    alarm[10] = 50;
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
        obj_dracula_combat.clawHitCount += 1;
        global.cooldown = false;
        sound_fix(sndEarth1);
        alarm[11] = 1;
    }
}

