draw_current();
if(status == 0)
{
    draw_set_color(c_green);
}
else if(status == 1)
{
    draw_set_color(c_yellow);
}
else
{
    draw_set_color(c_red);
}
draw_set_alpha(image_alpha);
draw_roundrect(x + sprite_width - 12,y, x + sprite_width,y + 12,false);

draw_reset_color();

