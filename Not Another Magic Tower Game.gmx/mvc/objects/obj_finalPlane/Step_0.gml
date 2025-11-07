if frozen exit;
var U,D,L,R,h,v;
//slow
if keyboard_check(global.jumpbutton){
    nowSpeed=maxSpeed/3*factor;
    slow = 1;
}
else{
    nowSpeed=maxSpeed*factor;
    slow = 0;
}
//moving
h = 0;
v = 0;
if frozen == false
{
    U = keyboard_check(global.upbutton);
    D = keyboard_check(global.downbutton);
    L = keyboard_check(global.leftbutton);
    R = keyboard_check(global.rightbutton);
    h = R;
    v = -U;
    if(h == 0){
        h = -L;
    }
    if(v == 0){
        v = D;
    }
    if h==0 and v!=0{
        y += nowSpeed * v;
    }
    else if h!=0 and v==0{
        x += nowSpeed * h;
    }
    else if h!=0 and v!=0{
        x += 0.7*nowSpeed*h;
        y += 0.7*nowSpeed*v;
    }
}
if (bbox_top < Uborder){y = yprevious;}
if (bbox_left < Lborder){x = xprevious;}
if (bbox_right >= Rborder){x = xprevious;}
if (bbox_bottom >= Dborder){y = yprevious;}

if keyboard_check_direct(global.shotbutton){
    if(shootCoolDown == 0)
    {
        var a=instance_create(x+22,y+4,obj_finalTouhouBullet);
        a.hspeed=17;
        a.depth=depth-1;
        shootCoolDown = 3;
    }
}

if(!player_is_alive())
{
    instance_destroy();
}
if(shootCoolDown > 0)
{
    shootCoolDown -= 1;
}

