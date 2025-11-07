if(!player_is_alive())
    exit;
obj_osuController.currentInd += 1;
if(correct)
{
    if(obj_osuController.mode == 0) //osu
    {
        judge = instance_create(x,y,obj_osuStandardCorrect);
        if(acc == 300)
        {
            judge.sprite_index = spr_osuStandard300;
        }
        else if(acc == 100)
        {
            judge.sprite_index = spr_osuStandard100; 
        }
        with(obj_osuController)
        {
            event_user(1);
        }
        sound_fix(sndOsuHitNormal);
    }
    else if(obj_osuController.mode == 1) //taiko
    {
        judge = instance_create(obj_taikoBoard.x,obj_taikoBoard.y,obj_taikoDrumHit);
        if(acc == 300)
        {
            judge.sprite_index = spr_perfect;
        }
        else
        {
            judge.sprite_index = spr_good;
        }
        result = instance_create(x,y,obj_taikoNoteHit);
        result.sprite_index = sprite_index;
        obj_osuController.currentTaikoIndex += 1;
    }
    else if(obj_osuController.mode == 2) //ctb
    {
        sound_fix(sndOsuHitNormal);
    }
    ammount = acc / 50;
    if(obj_osuController.hp <= 100 - ammount)
    {
        obj_osuController.hp += ammount;
    }
    else
    {
        obj_osuController.hp = 100;
    }
    obj_osuController.combo += 1;
    with(obj_osuComboBurst)
    {
        scale = bScale;
    }
}
else
{
    if(obj_osuController.mode == 0) // osu
    {
        instance_create(x,y,obj_osuFault);
        with(obj_osuController)
        {
            event_user(1);
        }
    }
    else if(obj_osuController.mode == 1) //taiko
    {
         judge = instance_create(obj_taikoBoard.x,obj_taikoBoard.y,obj_taikoDrumHit);
         judge.sprite_index = spr_miss1;
         obj_osuController.currentTaikoIndex += 1;
    }
    else if(obj_osuController.mode == 2) //ctb
    {
        //
    }
    if(obj_osuController.hp >= 10)
    {
        obj_osuController.hp -= 10;
    }
    else
    {
        obj_osuController.hp = 0;
        //obj_osuController.start = false;
    }
    obj_osuController.combo = 0;
    sound_fix(sndOsuComboBreak);
}

