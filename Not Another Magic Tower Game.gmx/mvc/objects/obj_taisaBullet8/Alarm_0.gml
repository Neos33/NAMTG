var len = 9;
var num = 3;
for(var i=0;i<num;i+=1)
{
    var ang = 360/num*i;
    var xx = x + lengthdir_x(len,dir+ang);
    var yy = y + lengthdir_y(len,dir+ang);
    var a = createBullet(xx,yy,0,dir+ang,spr_danmaku3,image_index+i);
    a.alarm[1] = 50;
    a.frc = -0.05;
    a.maxspd = 4;
    a.depth = depth+1;
}
dir += 17;
alarm[0] = 5;

