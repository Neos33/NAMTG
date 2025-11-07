draw_sprite_ext(sprite_index,image_index,x-hspeed * 2,y-vspeed * 2,image_xscale,image_yscale,image_angle,c_red,image_alpha * 0.3);
draw_sprite_ext(sprite_index,image_index,x-hspeed,y-vspeed,image_xscale,image_yscale,image_angle,c_red,image_alpha * 0.5);
draw_current();

draw_set_color(timeColor);
draw_set_alpha(timeAlpha);
if(totalTime < limitTime)
{
    draw_rectangle(112, 32, 112 + 600 * (limitTime - totalTime) / limitTime, 48, false);
    if(phase == 1)
    {
        draw_set_color(c_red);
        draw_set_alpha(1);
        draw_rectangle(64, 32, 96, 48, false);
    }
}

draw_set_color(c_white);
draw_set_alpha(1);

