if(phase == "jump")
{
    if(vspeed > 0)
    {
        gravity = 0;
        instance_create(x,y, obj_teleport);
        sound_fix(sndTeleport);
        x = -32; 
        y = -32;
        alarm[6] = 40;
        phase = "init";
    }
    else
    {
        vspeed += 0.8;
    }
}

if(phase = "smash")
{
    if(abs(vspeed) < 0.1)
    {
        vspeed = 0;
        hspeed = 0;
        instance_create(x,y, view_shaker1);
        sound_fix(sndEarth1);
        key.smashEnd = true;
        alarm[7] = 30;
        phase = "init";
    }
}

if(phase = "run")
{
    if(abs(hspeed) < 0.1)
    {
        if(x > 400)
        {
            hspeed = -1.5;      
            x -= 5;              
        }
        else
        {
            hspeed = 1.5;
            x += 5;                             
        }
        vspeed = -4; 
        gravity = 0.1;
        key.onRun = false;
        key.onHold = true;
        sprite_index = spr_guardlv1_battle;
        instance_create(x,y, view_shaker1);
        phase = "final";
    }
}

if(phase == "final")
{
    if(y > 559 && abs(vspeed < 0.1))
    {
        sound_fix(sndEarth1);
        y = 560;
        hspeed = 0;
        vspeed = 0;
        gravity = 0;
        phase = "init";
        
        obj_diaoSlime_combat.x = 704;
        obj_diaoSlime_combat.y = 544;
        obj_diaoSlime_combat.status = 0;
        obj_diaoSlime_combat.alarm[4] = 30;
        instance_destroy();
    }
}

if(!instance_exists(obj_diaoSlime_combat))
{
    instance_destroy();
    exit;
}

hp = obj_diaoSlime_combat.hp;
image_alpha = obj_diaoSlime_combat.image_alpha;


