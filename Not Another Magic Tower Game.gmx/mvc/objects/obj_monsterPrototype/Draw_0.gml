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
draw_roundrect(x+ 28 * (sprite_width / 32),y, x + sprite_width,y + 4 * (sprite_height / 32),false);


draw_set_color(c_white);

