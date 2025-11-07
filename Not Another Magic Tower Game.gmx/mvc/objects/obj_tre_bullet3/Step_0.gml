/// @description pattern
direction += dirspd;
friction -= frspd;
speed += sp;

if bounce 
{
    if !place_free(x+hspeed,y) hspeed = -hspeed;
    if !place_free(x,y+vspeed) vspeed = -vspeed;
    
}

///effect
var inst;
if(fade_i_change)
{
    image_alpha+=0.1;
}
if(fade_o_change)
{
    image_alpha-=0.1;
    if image_alpha<=0 instance_destroy()
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
        inst.alpha_speed = saspd;
        inst.scale_speed = ssspd;
        inst.add = 1;
        st = 0;
    }
}


