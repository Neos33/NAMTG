if(j<=30)
{
    if(j == 0)
    {
        audio_playsound(snd_touhou_bonus3);
    }
    xx=x+lengthdir_x(100,180);
    yy=y+lengthdir_y(100,180);
    var a=instance_create(xx,yy,obj_blueknight_bullet);
    a._id=id;
    a.len=100;
    a.dir=180;
    a.dirspd=4;
    dir+=30;
    j+=1;
    alarm[5]=5;
}
else
{
    alarm[6]=20;
    j=0;
}


