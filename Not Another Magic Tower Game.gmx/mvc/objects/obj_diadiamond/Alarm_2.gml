for(var i=0;i<3;i+=1)
{
    var a=createDiaBullet(x,y,spd[2],dir[2]+120*i,spr_danmaku9,1+irandom(6));
    a.friction = -0.04;
}
spd[2] += 0.1;
dir[2] += 23;
alarm[2] = 12;
/*a=createDiaBullet(x,y,random_range(0.5,2),random(360),spr_danmaku9,1+irandom(6));
a.friction = -0.06;
alarm[2] = choose(2,3);

/* */
/*  */
