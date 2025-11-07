laserCount = 3;
width = 100;
oWidth = 100;
angle = 90;
prec = 10;
color[0] = c_red;
color[1] = c_yellow;
color[2] = c_blue;
colorStep = 0;
col = c_red;
alpha = 0;
len = 960;
angleDir = choose(-1,1);
rotateCount = 4;
precision = 10;
alarm[0] = 1;

for(var i = 0; i < laserCount; i+=1)
{
    var b = instance_create(x,y,obj_tl_bdmLaserCollision);
    b.ind = i;
    b.image_xscale = len / 32;
}

sound_fix(snd_touhou_masterSpark);


widthAngle = 0;
targetAngle = 0;


