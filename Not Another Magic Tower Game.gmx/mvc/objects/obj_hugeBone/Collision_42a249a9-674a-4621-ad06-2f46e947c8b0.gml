audio_playsound(sndBossHit);
with(other)
{
    hitEffect();
    instance_destroy();
}

hp -= 1;

