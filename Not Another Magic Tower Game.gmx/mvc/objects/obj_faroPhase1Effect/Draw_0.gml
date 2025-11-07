/*draw_set_alpha(0.5);
draw_set_color(color);
for(i = -240; i < 800 + 240;i += gap)
{
    sx1 = i;
    sy1 = 0;
    dir1 = point_direction(sx1, sy1, 400, 608);
    ey1 = 200;
    if(dir1 != 270)
    {
        ex1 = sx1 - (ey1 - sy1)/tan(degtorad(dir1));
    }
    else
    {
        ex1 = sx1;
    }
    draw_line(sx1,sy1,ex1,ey1);
    
    sx2 = i;
    sy2 = 608;
    dir2 = point_direction(sx2, sy2, 400, 0);
    ey2 = 608 - 200;
    if(dir2 != 90)
    {
        ex2 = sx2 - (ey2 - sy2)/tan(degtorad(dir2));
    }
    else
    {
        ex2 = sx2;
    }
    draw_line(sx2,sy2,ex2,ey2);
}

draw_line(0,200,800,200);
draw_line(0,608 - 200,800,608 - 200);

tShift = time mod 20;
for(i = 0; i < 5; i += 1)
{
    yShift = 3 * (i * 20 + tShift) - 0.5 * 0.02 * sqr(i * 20 + tShift);
    draw_line(0,yShift,800,yShift);
    draw_line(0,608-yShift,800,608-yShift);
}

//v0 * 100 - 0.5 * 0.05 * 10000 = 200

/* */
/*  */
