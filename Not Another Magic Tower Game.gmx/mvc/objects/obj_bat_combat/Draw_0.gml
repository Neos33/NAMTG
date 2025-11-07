if(status == 1)
{
    draw_set_alpha(1);
    for(var i = 0; i < 5; i+= 1)
    {
        draw_sprite_ext(sprite_index, image_index, x + 10 * (i+1) * cos(degtorad(360 -direction)), y - 10 * (i+1) * sin(degtorad(360 -direction)),1,1,image_angle,c_white, 1 - 0.17 * (i + 1));
    }
}
if(isDrawWave)
{
    wave += 1;
    wcount = ceil(wave / 15);
    for(var i = 0; i < wcount; i+=1)
    {
        draw_set_alpha(1 - i * 0.15);
        draw_set_color(c_silver);
        draw_circle(x,y, (wave - 15 * i) * 10, true);
    }
    if(wave == 100)
    {
        wave = 0;
        isDrawWave = false;
    }
}
draw_set_alpha(1);
draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_white,image_alpha);
draw_set_color(c_white);

