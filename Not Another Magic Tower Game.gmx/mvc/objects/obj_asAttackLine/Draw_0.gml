if(start)
{
    var tx = x + 1600 * cos(degtorad(direction + 180));
    var ty = y - 1600 * sin(degtorad(direction + 180));
    draw_set_alpha(alpha);
    draw_line_width(x,y,tx,ty, 2);
    draw_set_alpha(0.5 * alpha);
    draw_line_width(x,y,tx, ty, 4);
    
    draw_set_alpha(1);
}

