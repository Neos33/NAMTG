if(!auto)

{
    len = abs(obj_osuController.taikoSpd) * 8;
    element = obj_osuController.element[obj_osuController.currentTaikoIndex];
    dis = point_distance(element.x, element.y, obj_taikoBoard.x, obj_taikoBoard.y);
    element.dis = dis;
    if(keyboard_check_pressed(taikoLeftRed))
    {
        obj = instance_create(obj_taikoDrum.x, obj_taikoDrum.y, obj_taikoDrumHit);
        obj.sprite_index = spr_leftred;
        if(!(dis > len && element.x > obj_taikoBoard.x))
        {
            element.hitType = 0;
            element.isHit = true;
        }
        sound_fix(snd_redHit);
    }
    if(keyboard_check_pressed(taikoRightRed))
    {
        obj = instance_create(obj_taikoDrum.x, obj_taikoDrum.y, obj_taikoDrumHit);
        obj.sprite_index = spr_rightred;
        if(!(dis > len && element.x > obj_taikoBoard.x))
        {
            element.hitType = 0;
            element.isHit = true;
        }
        sound_fix(snd_redHit);
    }
    if(keyboard_check_pressed(taikoLeftBlue))
    {
        obj = instance_create(obj_taikoDrum.x, obj_taikoDrum.y, obj_taikoDrumHit);
        obj.sprite_index = spr_leftblue;
        if(!(dis > len && element.x > obj_taikoBoard.x))
        {
            element.hitType = 1;
            element.isHit = true;
        }
        sound_fix(snd_blueHit);
    }
    if(keyboard_check_pressed(taikoRightBlue))
    {
        obj = instance_create(obj_taikoDrum.x, obj_taikoDrum.y, obj_taikoDrumHit);
        obj.sprite_index = spr_rightblue;
        if(!(dis > len && element.x > obj_taikoBoard.x))
        {
            element.hitType = 1;
            element.isHit = true;
        }
        sound_fix(snd_blueHit);
    }

}
else
{
    
    element = obj_osuController.element[obj_osuController.currentTaikoIndex];
    dis = point_distance(element.x, element.y, obj_taikoBoard.x, obj_taikoBoard.y);
    if(dis <= 5)
    {
        obj = instance_create(obj_taikoDrum.x, obj_taikoDrum.y, obj_taikoDrumHit);
        element.isHit = true;
        element.dis = dis;
        if(element.type mod 2 != 0)
        {
            element.hitType = 1;
        }
        if(right > 0)
        {
            if(element.type == 0 || element.type == 2)
            {
                obj.sprite_index = spr_rightred;
                sound_fix(snd_redHit);
            }
            else
            {
                obj.sprite_index = spr_rightblue;
                sound_fix(snd_blueHit);
            }
        }
        else
        {
            if(element.type == 0 || element.type == 2)
            {
                obj.sprite_index = spr_leftred;
                sound_fix(snd_redHit);
            }
            else
            {
                obj.sprite_index = spr_leftblue;
                sound_fix(snd_blueHit);
            }
        }
        right *= -1;      
    }
}

