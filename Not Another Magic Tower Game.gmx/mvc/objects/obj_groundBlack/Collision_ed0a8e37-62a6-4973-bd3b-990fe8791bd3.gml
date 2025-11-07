if(global.godmod)
    exit;
with(other)
{
    event_user(1);
    killPlayer();
    obj_faShiLiu_combat.hspeed = 0;
    obj_groundBlack.hspeed = 0;
    instance_destroy();
}

