draw_current();
for(var i = 0; i < totalTime; i+=1)
{
    draw_set_color(c_black);
    draw_set_alpha(1);  
    draw_rectangle(x + 8 + 12 * (i mod 2), y + 32 + 10 * floor(i / 2), x + 8 + 12 * (i mod 2) + 4, y + 32 + 10 * floor(i / 2) + 4, false);
    if((time - i * 50) > 0)
    {
        draw_set_color(color);
        if((time - i * 50) > 50)
        {
            draw_set_alpha(1);
        }
        else
        {
            draw_set_alpha((time - i * 50) / 50);
        }
        draw_rectangle(x + 8 + 12 * (i mod 2), y + 32 + 10 * floor(i / 2), x + 8 + 12 * (i mod 2) + 4, y + 32 + 10 * floor(i / 2) + 4, false);
    }   
}



draw_reset_color();

