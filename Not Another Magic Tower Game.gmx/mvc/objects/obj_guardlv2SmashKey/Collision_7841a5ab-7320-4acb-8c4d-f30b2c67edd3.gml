if(status == 0)
{
    audio_playsound(sndEarth1);
    instance_create(x,y,view_shaker1);
    obj_guardlv2_combat.smash = false;
    obj_guardlv2_combat.hspeed = 0;
    hspeed = 0;
    player.x = 6;
    status = 1;
    obj_guardlv2_combat.speed = 5;
    obj_guardlv2_combat.direction = 45;
    obj_guardlv2_combat.image_angle = 0;
    obj_guardlv2_combat.gravity = 0.1;
    obj_guardlv2_combat.teleport3 = true;;
    obj_guardlv2_combat.teleport3Delay = 70;
}

