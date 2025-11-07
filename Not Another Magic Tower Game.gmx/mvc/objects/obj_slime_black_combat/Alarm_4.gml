x=600;
y=460;
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
    alarm[4]=4;
}
else
{
    alarm[4]=0;
    alarm[5]=5;
    i=0;
}

