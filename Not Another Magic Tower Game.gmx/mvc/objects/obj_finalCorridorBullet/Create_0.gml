tx = 0;
ty = 0;
tw = 0;
td = 0;
otx = 0;
oty = 0;
otw = 0;
otd = 0;
image_speed = 1/8;

if(global.grav=0){hspeed = player.image_xscale*16;}
else{hspeed = player2.image_xscale*16;}

if(room == rRedKnight)
{
    image_angle = sign(image_xscale) * 90;
    vspeed = -16;
    hspeed = 0;
}
alarm[0] = 40;

