obj_faShiLiu_combat.phase = 5;
with(obj_phase4BulletGenerator)
{
    instance_destroy();
}
with(obj_shiliuPhase4Bullet)
{
    hspeed = 0;
}
with(obj_phase4BounceKid)
{
    vspeed = 0;
    frozen = true;
}
alarm[0] = 20;

startChange = 0;
i = 0;

