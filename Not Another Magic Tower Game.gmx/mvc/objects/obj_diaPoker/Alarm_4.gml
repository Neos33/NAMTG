if(yt>0)
{
    image_yscale = sin(yt);
    yt -= pi/40;
    alarm[4] = 1;
}
else{
    alarm[ATK] = 1;
}

