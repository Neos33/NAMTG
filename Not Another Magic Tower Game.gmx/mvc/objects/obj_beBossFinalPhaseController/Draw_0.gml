draw_set_color(timeColor);
draw_set_alpha(timeAlpha);
if(totalTime < limitTime)
{
    draw_rectangle(112, 32, 112 + 600 * (limitTime - totalTime) / limitTime, 48, false);
    if(phase < (phaseCount - 1))
    {
        draw_set_color(c_red);
        draw_set_alpha(1);
        pWidth = 32 / (phaseCount - phase - 1);
        for(i = 0; i < phaseCount - phase - 1; i+= 1)
        {
            draw_rectangle(64 + pWidth * i, 32, 64 + pWidth * (i + 0.9) , 48, false);
        }
    }
    //draw_set_font(font12);
    //draw_text(112,16,totalTime);
}

draw_set_color(c_white);
draw_set_alpha(1);

