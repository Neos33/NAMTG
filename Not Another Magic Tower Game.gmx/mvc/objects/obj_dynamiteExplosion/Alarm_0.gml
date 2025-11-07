with(target)
{
    sound_fix(sndDeath);
    instance_create(x+16,y+16,bloodEmitter);
    if(!sample)
    {
        global.monsters[ind] = true;
        player.frozen = false;
    }
    instance_destroy();
}

