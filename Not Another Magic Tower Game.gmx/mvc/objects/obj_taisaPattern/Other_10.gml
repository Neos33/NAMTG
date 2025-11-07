num7 = 48+16*flag7;
n7 = 8;
R = 150;
r = 70;
frame = 24;
if(flag7)
{
    rnd7 = getDirection(player)+22.5;
}
for(var i=0;i<num7;i+=1)
{
    var xx=lengthdir_x(r7,i*360/num7+rnd7)
    var yy=lengthdir_y(r7,i*360/num7+rnd7);
    var a = createBullet(x+xx,y+yy,1,i*360/num7+rnd7,spr_danmaku9,RED,obj_taisaBullet6);
    if(flag7)
    {
        a.spd = (R-(R-r)/(180/n7)*abs(((i*360/num7) mod (360/n7))-(180/n7)))/frame;
    }
    a.len = abs(r7);
    a.image_alpha = 0;
    a.friction = -0.05;
}
r7+=15;
if r7=120{
    r7 = -120;
}
rnd7 += 3.8;
alarm[7]=15;

/*for(k=0;k<3;k+=1){
    for(i=2.5;i>=0;i-=1){
        for(j=-1;j<=1;j+=2){
            inst = instance_create(x,y,obj_taisaBullet5);
            inst.speed = 3+2*k;
            inst.direction = 180+dir7 + 10*i*j;
            inst.image_angle = inst.direction;
            inst.sprite_index = spr_danmaku9;
            inst.image_index = PURPLE;
            inst.friction = (3+2*k)/50;
        }
    } 
}
dir7 += 59;
alarm[7] = 12;

/* */
/*  */
