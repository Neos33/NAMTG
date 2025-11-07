triggered = 0;

event_inherited();
hpLimit = 500;
combatTime = 0;
phase = 1;
ang = 0;
r = 0;
hp = 666;
image_alpha = 0.8;
image_speed = 0;
name = "FaShiLiu";
startX = x;
startY = y;

tIndex = 0;
maxIndex = 11;
timing[0] = 5;
timing[1] = 55;
timing[2] = 95;
timing[3] = 140;
timing[4] = 175;
timing[5] = 190;
timing[6]= 205;
timing[7] = 235;
timing[8] = 265;
timing[9] = 280;
timing[10] = 295;
timing[11] = 330;

alarm[3] = 1420;
alarm[4] = 2120;
alarm[5]= 2660;
alarm[6] = 3620;
alarm[7] = 4330;

for(var i = 0; i < 12; i+= 1)
{
    aa = instance_create(x,y, obj_shiliuBullet1);
    aa.ind = i;
}

