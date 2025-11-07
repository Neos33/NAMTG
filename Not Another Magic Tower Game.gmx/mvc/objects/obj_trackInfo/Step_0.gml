if(!player_is_alive())
{
    instance_destroy();
}
if(gapy > 0)
{
    gapy -= 1;
}
x = player.x;
y = player.y - 32 + gapy;
if(up)
{
    if(image_alpha < 1)
    {
        image_alpha += 0.05;
    }
    else
    {
        global.trackInCoolDown = false;
        up = false;
    }
}
else
{
    if(image_alpha > 0)
    {
        image_alpha -= 0.01;
    }
    else
    {
        instance_destroy();
    }
}

