draw_current();
if(target)
{
    draw_set_color(c_silver);
    draw_set_alpha(0.5);
    draw_line(x,y,target.x,target.y);
    
    draw_reset_color();
}

