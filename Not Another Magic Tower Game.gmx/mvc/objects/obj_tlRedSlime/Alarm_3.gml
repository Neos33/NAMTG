app = instance_create(x, y, obj_cherry);
with(app)
{
    move_towards_point(player.x, player.y, 10);
    audio_playsound(sndShoot);
}
alarm[3] = 3;

