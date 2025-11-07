if(!over)
{
    if(image_alpha < 0.8)
    {
        image_alpha += 0.02;
    }
    else
    {
        over = true;
        alarm[0] = 50;
    }
}
/*else
{
    if(destroy)
    {
        if(image_alpha > 0)
        {
            image_alpha -= 0.02;
        }
        else
        {
            instance_destroy();
        }
    }
}*/
if(!instance_exists(obj_darkSummoner_combat))
{
    if(!dark)
    {
        instance_destroy();
    }
}
else
{
    x = obj_darkSummoner_combat.x;
    y = obj_darkSummoner_combat.y;
}




/* */
/*  */
