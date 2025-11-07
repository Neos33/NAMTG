xx = 192 - sqr(tt);
tt += sqrt(192)/20;
count7 += 1;

var a=instance_create(xx,620,obj_tre_bullet3);
    a.image_index=rn7;
    a.shadow = true;
    a.saspd = 0.1;
    a.stt = 4;
    a.vspeed = -12;

a=instance_create(800-xx,-8,obj_tre_bullet3);
a.image_index=rn7+12;
a.shadow = true;
a.saspd = 0.1;
a.stt = 4;
a.vspeed = 12;

if count7<42 alarm[7]=1;

