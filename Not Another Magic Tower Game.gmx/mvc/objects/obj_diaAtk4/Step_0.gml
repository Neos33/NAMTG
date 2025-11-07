/*if(place_meeting(x,y,bullet)){
    with(instance_place(x,y,bullet))instance_destroy();
    if(image_alpha == 1){
        obj_diamante.nowHP -= 1;
        image_alpha = 0.5;
        alarm[6] = 40;
        audio_playsound(sndBossHit);
        if(obj_diamante.nowHP == 0){
            with(obj_diamante)instance_destroy();
            instance_destroy();
        }
    }
}*/
if(die) exit;
if pose 
{
    speed = (point_distance(x,y,xx,yy))/15;
    direction = point_direction(x,y,xx,yy);
}
if shadow
{
    if(ttt == 2 - blur)
    {
        a=instance_create(x,y,obj_diaShadow);
        a.sprite_index=spr_diaShadow;
        a.depth = depth + 1;
        ttt = 0;
    }
    ttt += 1;
}


/* */
if(die) exit;
if(at1)
{
    if(random(1)<0.75)
    {
        dir1=75*sin(random(2*pi))+point_direction(x,y,player.x,player.y);
        var a=createDiaBullet(x,y,random_range(3,7),dir1,spr_danmaku9,irandom(7),obj_diaDanmaku2);
        if(curve){a.dirspd=random_range(-0.4,0.4);}
        a.friction=-0.05;
    }
}
if(at2)
{
    repeat(1)
    {
        a=createDiaBullet(x,y,10,random(360),spr_sdiamond,0,obj_diaDanmaku2);
        a.dirspd=0.8+(alpha-1)*1.6;
        a.add=1;
    }
    if(at2b)
    {
        if(alpha>0){alpha-=1/100;}
        with(obj_diaDanmaku2){fade=1;image_alpha=other.alpha}
    }
}
if(at3)
{
    var spr=choose(spr_danmaku2,spr_danmaku3,spr_danmaku4,
    spr_danmaku9,spr_danmaku10,spr_danmaku11,spr_sdiamond);
    p3+=0.0004;
    repeat(1+3*p3)
    {
        createDiaBullet(x,y,random_range(3,7),random(360),spr,irandom(7),obj_diaDanmaku2);
    }
}
if go
{
    hspeed+=sign(hspeed)*0.23;
    vspeed+=sign(vspeed)*0.017;
    if(abs(hspeed)>30 && blur=0)
    {
        blur=1;
    }
    t2+=1;
    if(t2=2)
    {
        if(abs(hspeed)>80)
        {
            createDiaBullet(random_range(0,800),y,random_range(5,7),random_range(87,93),spr_danmaku11,irandom(7));
        }
        else
        {
            createDiaBullet(x+(blur)*random_range(-100,100),y,random_range(5,7),random_range(87,93),spr_danmaku11,irandom(7));
        }
        t2=0;
    }
}
if(color)
{
    tc+=1;
    with(obj_diaDanmaku)
    {
        image_index = tc div 20 + 3;
    }
    if tc==20
    {
        obj_diaDanmaku.sprite_index=spr_danmaku10;
    }
    if tc==40
    {
        go = 0;
        with(obj_diaDanmaku)
        {
            direction=point_direction(x,y,player.x,player.y);
            sprite_index=spr_danmaku4;
            image_angle = direction;
            image_blend = c_white;
            speed = 1;
        }
    }
    if tc==60
    {
        with(obj_diaDanmaku)
        {
            direction=point_direction(x,y,player.x,player.y)+180;
            image_angle = direction;
            speed = 25;
        }
        with obj_diaShadowB instance_destroy();
        x = -32;
        y = -32;
        speed = 0;
        die = true;
        //instance_destroy();
    }
}




/* */
/*  */
