rnd11 = random_range(2,6);
len11 = 100*sin(count11);
count11 += cc11;
cc11 += 0.001;
num11 = 4;
for(var i=0;i<num11;i+=1)
{
    var xx = x + lengthdir_x(len11,dir11+360/num11*i);
    var yy = y + lengthdir_y(len11,dir11+360/num11*i);
    var a = createBullet(xx,yy,rnd11,dir11+random(15)+360/num11*i,spr_danmaku4,choose(BLUE,CYAN),obj_taisaBullet9);
    a.spd = rnd11;
}
dir11 += 3;
alarm[11] = 2;

