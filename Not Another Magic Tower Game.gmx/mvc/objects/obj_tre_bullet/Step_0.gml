/// @description pattern
direction += dirspd;
friction -= frspd;
if(sclspd != 0)
{
    image_xscale += sclspd;
    image_yscale += sclspd;
    if(image_xscale <= 0){instance_destroy()}
}
if(spin)
{
    x=400+lengthdir_x(len,ang);
    y=304+lengthdir_y(len,ang);
    len+=lenspd;
    ang+=angspd;
}
if(pat1)
{
    if(!p1)
    {
        ry=point_distance(x,y,x,304);
        ay=point_direction(x,y,x,304)+180;
        p1=1;
    }
    y=304+lengthdir_y(ry,ay+radtodeg(ty));
    if(ty<3/2*pi)
    {
        ty+=bpf*pi;
    }
    else
    {
        ty=3/2*pi;
    }
}
if(pat2)
{
    if(!p2)
    {
        rr=point_distance(x,y,400,304);
        aa=point_direction(400,304,x,y);
        p2=1;
    }
    x=400+lengthdir_x(rr,aa+t2);
    y=304+lengthdir_y(rr,aa+t2);
    t2+=-1.5*sign((image_index mod 2)-0.5);
}

///effect
var inst;
if(fade_i_change)
{
    image_alpha+=0.1;
}
if(shadow)
{
    st += 1;
    if(st == stt)
    {
        inst = instance_create(x,y,obj_tre_shadow);
        inst.sprite_index = sprite_index;
        inst.image_xscale = image_xscale;
        inst.image_yscale = image_yscale;
        inst.image_index = image_index;
        inst.image_speed = image_speed;
        inst.image_angle = image_angle;
        inst.image_blend = image_blend;
        inst.depth = depth+1;
        inst.alpha_speed=saspd;
        inst.scale_speed=ssspd;
        st = 0;
    }
}


