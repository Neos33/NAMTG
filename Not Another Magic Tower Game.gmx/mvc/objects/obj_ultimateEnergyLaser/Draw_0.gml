if(start)
{
    draw_set_color(color);
    draw_set_alpha(alpha * alpha2);
    draw_line_width(startX, startY, x, y, 13);
    draw_set_alpha(alpha2);
    draw_line_width(startX, startY, x, y, 5);
    effect_create_above(ef_spark,x,y,.1,color);
    
    draw_reset_color();
}

