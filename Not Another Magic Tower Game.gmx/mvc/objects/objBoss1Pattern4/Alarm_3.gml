dire1 = 270;
length1 = 144;
color1 = 0;

dire2 = 90;
length2 = 112;
color2 = 0;

dire3 = 105.71;
length3 = 132.97;
color3 = 0;

dire4 = 117.90;
length4 = 153.88;
color4 = 0;

dire5 = 131.05;
length5 = 164.44;
color5 = 0;

dire6 = 144.78;
length6 = 166.47;
color6 = 0;

dire7 = 157.93;
length7 = 159.70;
color7 = 0;

dire8 = 170.54;
length8 = 145.99;
color8 = 0;

dire9 = 185.36;
length9 = 128.56;
color9 = 0;

dire10 = 202.17;
length10 = 116.62;
color10 = 0;

dire11 = 220.60;
length11 = 110.63;
color11 = 0;

dire12 = 239.74;
length12 = 111.14;
color12 = 0;

dire13 = 256.87;
length13 = 123.22;
color13 = 0;

dire14 = 283.13;
length14 = 123.22;
color14 = 0;

dire15 = 300.26;
length15 = 111.14;
color15 = 0;

dire16 = 319.40;
length16 = 110.63;
color16 = 0;

dire17 = 337.83;
length17 = 116.62;
color17 = 0;

dire18 = 354.64;
length18 = 128.56;
color18 = 0;

dire19 = 9.46;
length19 = 145.99;
color19 = 0;

dire20 = 22.07;
length20 = 159.70;
color20 = 0;

dire21 = 35.22;
length21 = 166.47;
color21 = 0;

dire22 = 48.95;
length22 = 164.44;
color22 = 0;

dire23 = 62.10;
length23 = 153.88;
color23 = 0;

dire24 = 74.29;
length24 = 132.97;
color24 = 0;

d=random_range(-20,20);

for(var j=1; j<=2+global.phase; j+=1)
{
    steps=1;
    var ii=irandom(6);
    repeat(24)
    {
        var a=instance_create(x,y,objBoss1Bullet5);
        //a.speed = (1.4-j*0.1)*variable_local_get("length"+string(steps))/30;
        //a.direction = variable_local_get("dire"+string(steps))+d+j*4;
        a.speed = (1.4-j*0.1)*variable_instance_get(id, "length"+string(steps)) / 30;
        a.direction = variable_instance_get(id, "dire"+string(steps))+d+j*4;
        a.image_index=ii;
        steps+=1;
        
    }
}
instance_destroy();

