if(enemyCount <= 0 && !battleEnd)
{
    battleEnd = true;
    with(obj_4b6Prototype)
    {
        instance_destroy();
    }
    sound_fix(sndDeath);
    alarm[11] = 30;
}

if(!global.inGallery || (global.GalleryBossFight && global.GalleryBossFightNum > 1))
{
    if(global.special[18])
    {
        if(global.GalleryBossFight)
        {
            if(global.GalleryBossFightHp < global.FullHp)
            {
                if(recoveryCountDown == 0)
                {
                    global.GalleryBossFightHp += 1;
                    recoveryCountDown = 100;
                }
                else
                {
                    recoveryCountDown -= 1;
                }
            }
        }
        else
        {
            if(global.hp < global.FullHp)
            {
                if(recoveryCountDown == 0)
                {
                    global.hp += 1;
                    recoveryCountDown = 10;
                }
                else
                {
                    recoveryCountDown -= 1;
                }
            }
        }
    }
}

