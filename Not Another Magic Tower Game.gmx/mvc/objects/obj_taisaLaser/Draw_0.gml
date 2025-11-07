if !laser
{
    draw_set_color(c_white);
    draw_set_alpha(alpha);
    if alpha<1 alpha+=0.05;
    draw_line_direction(x,y,image_angle)
    draw_line_direction(x,y,image_angle+180)
    
    draw_set_alpha(1);
}
else
{
    draw_set_blend_mode(bm_add);
    timer += 1;
    if timer<20
    {
        image_yscale+=sclspd;
        event_user(0);
    }
    else if timer<20+lifetime
    {
        event_user(0);
    };
    else if timer<39+lifetime
    {
        event_user(0);
        image_yscale-=sclspd;
    }
    else
    {
        instance_destroy()
    }
    draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
    draw_set_blend_mode(bm_normal);
}

