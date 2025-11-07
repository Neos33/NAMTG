alarm[1]=0;
alarm[2]=0;
alarm[3]=0;
alarm[4]=0;
alarm[5]=0;
if(image_xscale>=0.2)
{
    alarm[10]=1;
    image_xscale-=0.05;
    image_yscale-=0.05;
}
else
{
    sound_fix(sndfasfboom);
    alarm[11]=1;
}

