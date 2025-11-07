draw_set_color(c_fuchsia);
//draw_set_circle_precision(8);
//draw_set_blend_mode(bm_add);
for(var i = 0; i <= 800; i += 40)
{
    for(var j = 0; j <= 400; j += 40)
    {
        draw_set_alpha(random_range(0,1) * alpha);
        draw_circle(i,j,16,false);
    }
}
//draw_set_blend_mode(bm_normal);


draw_reset_color();

