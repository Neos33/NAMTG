event_inherited();
if(flag==1)
{
    sound_fix(snd_iyo);
    alarm[6]=0;
    x=400;
    y=200;
    vspeed = 0;
    image_speed = 0;
    image_index = 0;
    image_blend = c_white;
    i=0;j=0;
    flag=2;
    alarm[3]=100;
}
else
{
    if(flag==2)
    {
        flag=3;
        sound_fix(snd_iyo);
        alarm[7]=1;
    }
}

