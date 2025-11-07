/// @description  ADDED

if new_alarm_timer == 1
{
    if(global.story[32])
    {
        visible = false;
        x = -32;
        y = -32;
        p = instance_create(480,320,movingPlatform);
        p.visible = false;
        alarm[11] = 1;
    }
    if(global.story[33])
    {
        with(p)
        {
            instance_destroy();
        }
        instance_destroy();
    }
}
new_alarm_timer++;

if(triggered)
{
    if(image_alpha > 0)
    {
        image_alpha -= 0.02;
        image_angle += 10;
        image_xscale += 0.05;
        image_yscale += 0.05;
    }
}
if(quake)
{
    __view_set( e__VW.XView, 0, random_range(-3,3) );
    __view_set( e__VW.YView, 0, random_range(-3,3) );
}
if(storyEnd)
{
    if(alpha < 1)
    {
        alpha += 0.02;
        save1.image_alpha = alpha;
        save2.image_alpha = alpha;
        up.image_alpha = alpha;
    }
    else
    {
        instance_destroy();
    }
}

