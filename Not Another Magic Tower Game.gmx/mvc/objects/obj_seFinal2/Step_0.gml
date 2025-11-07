step += 1;

if(step == 200)
{
    sound_fix(sndDark2);
    with(instance_create(480,224,obj_seMonsterRespawn))
    {
        sprite_index = spr_devilLead;
    }
}
else if(step == 300)
{
    sound_fix(sndDark2);
    with(instance_create(448,352,obj_seMonsterRespawn))
    {
        sprite_index = spr_armoredSoldier;
    }
    with(instance_create(512,352,obj_seMonsterRespawn))
    {
        sprite_index = spr_armoredSoldier;
    }
}
else if(step == 400)
{
    sound_fix(sndDark2);
    with(instance_create(448,480,obj_seMonsterRespawn))
    {
        sprite_index = spr_blackDevilMagician;
    }
    with(instance_create(512,480,obj_seMonsterRespawn))
    {
        sprite_index = spr_blackDevilMagician;
    }
}
else if(step == 450)
{
    sound_fix(sndDark2);
    with(instance_create(320,544,obj_seMonsterRespawn))
    {
        sprite_index = spr_darkLord;
    }
    with(instance_create(640,544,obj_seMonsterRespawn))
    {
        sprite_index = spr_darkLord;
    }
}
else if(step == 500)
{
    sound_fix(sndDark2);
    sound_fix(sndDark2);
    with(instance_create(224,416,obj_seMonsterRespawn))
    {
        sprite_index = spr_darkWarrior;
    }
    with(instance_create(736,416,obj_seMonsterRespawn))
    {
        sprite_index = spr_darkWarrior;
    }
}

