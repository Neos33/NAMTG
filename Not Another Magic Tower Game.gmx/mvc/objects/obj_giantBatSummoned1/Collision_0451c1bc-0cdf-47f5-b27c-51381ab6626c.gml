with(other)
{
    instance_destroy();
}
audio_playsound(sndDeath);
obj_giantBat_combat.summonKilled += 1;
instance_destroy();

