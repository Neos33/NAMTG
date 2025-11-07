if !fadeOut
{
    fade_in();
}
else{
    fade_out(20);
    image_xscale-=0.03;
    image_yscale-=0.03;
}

if speed=0 and flag=0
{
    alarm[0]=1;
    alarm[1]=40;
    flag=1;
}

