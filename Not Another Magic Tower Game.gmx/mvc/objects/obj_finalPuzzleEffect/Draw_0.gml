draw_set_color(color);
for(var i = -608; i < 800; i += gap)
{
    draw_line(i,0,i + 608, 608);
}
shift = time mod gap;
for(var i = 0; i < 800 + 608; i += gap)
{
    draw_line(i - shift, 0, i - shift - 608, 608);
}

draw_set_color(c_white);

