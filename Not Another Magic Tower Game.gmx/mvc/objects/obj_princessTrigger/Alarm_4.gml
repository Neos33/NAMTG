if(princess2.image_alpha > 0)
{
    princess2.image_alpha -= 0.02;
    alarm[4] = 1;
}
else
{
    with(princess2)
    {
        instance_destroy();
    }
    global.story[39] = true;
    player.frozen = false;
    instance_destroy();
}

