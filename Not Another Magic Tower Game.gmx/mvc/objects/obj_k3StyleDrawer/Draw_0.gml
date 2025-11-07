draw_set_color(color);
draw_set_alpha(1);
for(var i=0;i<800+608;i+=gap)
{
    draw_line(i-offset,0,i-offset-608,608);
    draw_line(i,608,i-608,0);
}

draw_set_color(c_white);

