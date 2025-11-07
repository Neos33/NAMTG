if(up.image_alpha < 1)
{
    up.image_alpha += 0.01;
    with(savePoint)
    {
        image_alpha += 0.01;
    }
    with(obj_armoredSoldier)
    {
        image_alpha += 0.01;
    }
    alarm[0] = 1;
}
else
{
    player.frozen = false;
}

