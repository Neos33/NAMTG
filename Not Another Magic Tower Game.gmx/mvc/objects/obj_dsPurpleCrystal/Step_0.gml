if(obj_darkSummoner_combat.x == 400 && !start)
{
    start = true;
    alarm[0] = 50;
    alarm[2] = 50;
    alarm[3] = 50;
    alarm[1] = 450;
}

if(!over)
{
    if(image_alpha < 0.8)
    {
        image_alpha += 0.02;
    }
    else
    {
        over = true;
    }
}

if(!instance_exists(obj_darkSummoner_combat))
    instance_destroy();


x = obj_darkSummoner_combat.x;
y = obj_darkSummoner_combat.y;

