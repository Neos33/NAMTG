if !instance_exists(obj_guardlv1_combat)
    exit;
    
if(onBoom)
{
    image_angle += 10;
    speed -= 0.5;
    if(speed < 0)
    {
        if(abs(obj_guardlv1_combat.y - y) < 2 || (x < 0 || x > 800 || y > obj_guardlv1_combat.y))
        {
            y = obj_guardlv1_combat.y - 2;
        }
        else
        {
            if(y > (obj_guardlv1_combat.y - 2))
            {
                y -= 1;
            }
            else
            {
                y += 1;
            }
        }
    }
    if(speed <= -30)
    {
        onBoom = false;
        onHold = true;
        speed = 0;
    }
}
else
{
    sound_stop(sndBoomerang);
}

if !instance_exists(obj_guardlv1_combat)
{
    exit;
}   
if(onHold)
{
    if(player.x > obj_guardlv1_combat.x)
    {
        image_angle = 180;
        x = obj_guardlv1_combat.x + 12;
        y = obj_guardlv1_combat.y - 2;
    }
    else
    {
        image_angle = -90;
        x = obj_guardlv1_combat.x - 12;
        y = obj_guardlv1_combat.y - 2;
    }
}

if !instance_exists(obj_guardlv1_combat)
    exit;
    
if(onSmash)
{
    if(!smashEnd)
    {
        if(obj_guardlv1_combat.hspeed > 0)
        {
            x = obj_guardlv1_combat.x + 12;
            y = obj_guardlv1_combat.y - 2;
            image_angle = 180;
            smashType = 0;
        }
        else if(obj_guardlv1_combat.hspeed < 0)
        {
            x = obj_guardlv1_combat.x - 12;
            y = obj_guardlv1_combat.y - 2;
            smashType = 1;
        }
    }
    else
    {
        if(smashType == 0)
        {
            x = obj_guardlv1_combat.x + 16;
            y = obj_guardlv1_combat.y + 4;
            image_angle = 120;
        }
        else if(smashType == 1)
        {
            x = obj_guardlv1_combat.x - 16;
            y = obj_guardlv1_combat.y + 4;
            image_angle = -30;
        }
    }
}

if !instance_exists(obj_guardlv1_combat)
    exit;
image_alpha = obj_guardlv1_combat.image_alpha;

if !instance_exists(obj_guardlv1_combat)
    exit;
    
if(onRun)
{
    y = obj_guardlv1_combat.y;
    if(obj_guardlv1_combat.hspeed > 0)
    {
        x = obj_guardlv1_combat.x + 2;
        image_angle = 135;
    }
    else
    {
        x = obj_guardlv1_combat.x - 2;
        image_angle = -45;
    }
}

