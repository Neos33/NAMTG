direction += dirspd;
if !laser
{
    draw_set_color(c_white);
    draw_set_alpha(alpha);
    if alpha<1 alpha+=0.05;
    draw_line(par.x - lengthdir_x(rr,direction),par.y - lengthdir_y(rr,direction),par.x + lengthdir_x(rr,direction),par.y + lengthdir_y(rr,direction));
}
else{
    draw_set_blend_mode(bm_add);
    timer += 1;
    if timer<20
    {
        image_yscale+=sclspd;
        event_user(0);
    }
    else if timer<50
    {
        event_user(0);
    };
    else if timer<69
    {
        with(obj_finalTreboleE2){des=1;}
        event_user(0);
        image_yscale-=sclspd;
    }
    else
    {
        instance_destroy();
    }
    image_angle=direction;
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
    draw_set_blend_mode(bm_normal);
}


draw_reset_color();

