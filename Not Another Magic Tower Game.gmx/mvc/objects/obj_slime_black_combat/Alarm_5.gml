x=400 - 16;
y=304 - 16;
var app=instance_create(x,y,obj_cherry_black);
with(app)
{
    direction=random_range(1,355);
    speed=random_range(3,5);
    audio_playsound(sndShoot);
}
if i<10
{
    i+=1;
    alarm[5]=4;
}
else
{
    alarm[5]=0;
    alarm[3]=5;
    i=0;
}

