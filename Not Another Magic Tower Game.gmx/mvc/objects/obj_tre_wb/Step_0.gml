/// @description pattern
direction += dirspd;
friction -= frspd;

if(spin)
{
    x = 400+lengthdir_x(len,ang);
    y = 304+lengthdir_y(len,ang);
    len += lenspd;
    ang += rot*angspd;
}

if(pat)
{
    r = 180 * sin(degtorad(6*dir));
    xx = 400 + lengthdir_x(r,dir+dir0-dirspd);
    yy = 304 + lengthdir_y(r,dir+dir0-dirspd);
    x = 400 + lengthdir_x(r,dir+dir0);
    y = 304 + lengthdir_y(r,dir+dir0);
    dir += dirspd;
}

///effect
var inst;
if(fade_i_change)
{
    image_alpha+=0.1;
}
if(shadow)
{
    st += 1
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


