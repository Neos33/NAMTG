if(!surface_exists(surf))
{
    surf = surface_create(room_width,room_height);
}
surface_set_target(surf);
    draw_clear(c_black);
    //draw_set_circle_precision(64);
    //draw_set_blend_mode(bm_add);
    start = 112;
    for(var r = start; r < 304; r+=2)
    {
        key = floor((r - start) / 16);
        draw_set_color(color[key]);
        draw_circle(400,304,r,true);
    }
surface_reset_target();

draw_set_color(c_white);
//draw_set_blend_mode(bm_normal);

