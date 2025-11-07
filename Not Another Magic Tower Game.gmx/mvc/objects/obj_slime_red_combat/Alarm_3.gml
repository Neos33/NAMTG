//if instance_exists(player)
{
    if(status == 1)
    {
        var app = instance_create(x + 16, y + 16, obj_cherry);
        with(app)
        {
            move_towards_point(player.x, player.y, 10);
            audio_playsound(sndShoot);
        }
        alarm[3] = 3;
    }
}

