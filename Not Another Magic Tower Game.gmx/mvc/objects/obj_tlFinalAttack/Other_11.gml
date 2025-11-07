for(var i=0;i<36;i+=1)
{
    var xx = x + lengthdir_x(128,360/36*i+dir1);
    var yy = y + lengthdir_y(128,360/36*i+dir1);
    var a = instance_create(xx,yy,obj_finalBossBullet);
    a.speed = 2 + abs((i mod 9)-4);
    a.direction = point_direction(a.x,a.y,x,y)+60;
    a.image_xscale = 0;
    a.image_yscale = 0;
    a.alarm[1] = 1;
}
dir1 += 4.3;

