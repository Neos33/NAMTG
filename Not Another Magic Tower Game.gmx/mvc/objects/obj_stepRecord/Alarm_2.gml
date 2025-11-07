if(blackAlpha > 0)
{
    blackAlpha -= 0.02;
    alarm[2] = 1;
}
else
{
    start = true;
    player.frozen = false;
    shadow = instance_create(startX, startY, obj_jkShadow);
    shadow.ind = personIndex - 1;
    with(obj_jkShadow)
    {
        visible = true;
    }
}

