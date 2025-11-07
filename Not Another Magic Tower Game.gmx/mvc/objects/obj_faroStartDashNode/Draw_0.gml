if(targetX > 0)
{
    draw_set_blend_mode(bm_add);
    draw_set_alpha(1);
    draw_set_color(make_color_rgb(0,21,110));
    draw_line_width(x,y,targetX,targetY,width);
    if(width-2>0)
    {
        draw_set_color(make_color_rgb(40,112,122));
        draw_line_width(x,y,targetX,targetY,width-2);
        if(width-4>0)
        {
            draw_set_color(make_color_rgb(28,195,215));
            draw_line_width(x,y,targetX,targetY,width-4);
            if(width-6>0)
            {
                draw_set_color(make_color_rgb(230,248,255));
                draw_line_width(x,y,targetX,targetY,width-6);
            }
        }
    }
    draw_set_blend_mode(bm_normal);
    
    
    draw_set_color(c_white);
}

