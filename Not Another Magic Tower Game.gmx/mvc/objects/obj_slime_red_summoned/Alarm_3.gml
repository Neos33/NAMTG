if(status == 1)
{
    app = instance_create(x + 16, y + 16, obj_cherry);
    with(app)
    {
        move_towards_point(player.x, player.y, 10);
    }
    if(sound)
    {
        sound_fix(sndShoot);
    }
    alarm[3] = 3;
}

