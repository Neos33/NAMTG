if(j<=10)
{
    if(j == 0)
    {
        audio_playsound(snd_touhou_bonus3);
    }
    xx=x+lengthdir_x(100,180);
    yy=y+lengthdir_y(100,180);
    var a=instance_create(xx,yy,obj_tlBlueKnightBullet);
    a.cx=x;
    a.cy=y;
    a.len=64;
    a.dir=180;
    a.dirspd=4;
    dir+=30;
    j+=1;
    alarm[3]=7;
}
else
{
    alarm[4]=100;
    j=0;
}

