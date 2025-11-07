draw_set_color(c_fuchsia);
//draw_set_circle_precision(64);
draw_set_blend_mode(bm_add);
for(var r = 1; r <= r1; r += 1)
{
    draw_set_alpha(alpha * (r1 - r + 1) * alpha1);
    draw_circle(400,304,r,true);
}
draw_set_blend_mode(bm_normal);


draw_reset_color();

