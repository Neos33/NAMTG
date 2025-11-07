app=instance_create(x,y,obj_cherry_black);
with(app)
{
    direction=random_range(1,355);
    speed=random_range(3,5);
    audio_playsound(sndShoot);
}
alarm[3] = 3;

