sound_fix(sndBossHit);
if instance_exists(obj_blueKnight_combat)
    obj_blueKnight_combat.bubbleDestroyCount += 1;
with(other)instance_destroy();
instance_destroy();

