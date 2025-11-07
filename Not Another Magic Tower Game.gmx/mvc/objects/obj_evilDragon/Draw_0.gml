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
draw_roundrect(x + sprite_width/2 - 12,y - sprite_height/2, x + sprite_width/2,y - sprite_height/2 + 12,false);

draw_set_color(c_white);

