num2 = 4;
for(var i=0; i<num2; i+=1)
{
    createBullet(x,y,7,dir2+360/num2,spr_danmaku5,irandom_range(1,6));
    dir2 = (dir2+90) mod 360;
}
dir2 += 29.95;
alarm[2] = 1;

