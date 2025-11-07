if(isDrawWave)
{
    wave += 1;
    wcount = ceil(wave / 15);
    draw_set_circle_precision(64);
    for(var i = 0; i < wcount; i+=1)
    {
        draw_set_alpha(0.8 - i * 0.15);
        draw_set_color(c_silver);
        
        draw_circle(x,y, (wave - 15 * i) * 10, true);
    }
    if(wave == 100)
    {
        wave = 0;
        isDrawWave = false;
        alarm[5] = 120;
    }
}
draw_current();
draw_reset_color();
draw_set_circle_precision(24);

