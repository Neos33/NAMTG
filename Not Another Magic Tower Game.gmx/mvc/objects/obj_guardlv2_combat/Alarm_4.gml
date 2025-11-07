x=720;
y=560;
image_alpha = 1;
//visible=1;
if(inited)
{
    instance_create(x,y,obj_teleport2);
    audio_playsound(sndTelAtk);
}
inited = true;
hspeed=0;
vspeed=-4;
alarm[6]=random_range(30,60);

