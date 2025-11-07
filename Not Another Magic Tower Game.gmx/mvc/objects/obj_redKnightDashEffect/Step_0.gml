x = player.x;
y = player.y;
if(!player.redKnightDash && !endDash)
{
    endDash = true;
    alarm[1] = 1;
}
if(endDash)
{
    if(image_alpha > 0)
    {
        image_alpha -= 0.05;
    }
    else
    {
        instance_destroy();
    }
}

