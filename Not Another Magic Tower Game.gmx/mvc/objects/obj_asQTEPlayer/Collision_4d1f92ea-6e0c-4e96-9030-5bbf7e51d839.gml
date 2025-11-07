if(abs(hspeed) > 3)
{
    speed = 0;
    player.x = RangeClamp(x, 10, 790);
    player.y = y;
    player.frozen = false;
    player.visible = false;
    repeat(3)
    {
        instance_create(x,y,bloodEmitter);
    }
    with(player)
    {
        killPlayer();
    }
    instance_create(x,y,view_shaker1);
    instance_destroy();
}

