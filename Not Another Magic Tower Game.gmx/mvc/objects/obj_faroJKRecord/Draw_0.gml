if(room == ExtraJKBonus)
    exit;
//draw_set_color(c_silver);
//draw_rectangle(0,view_yview[1],800,view_yview[1] + 64, false);

draw_set_color(c_black);
draw_set_font(fontBasicInfo);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_alpha(1);
draw_text(16, __view_get( e__VW.YView, 1 ) + 32, string_hash_to_newline("Lives:"));
draw_set_font(fontBasicInfoMini);
draw_text(240, __view_get( e__VW.YView, 1 ) + 21, string_hash_to_newline("Down - Back to Start Position"));
draw_text(240, __view_get( e__VW.YView, 1 ) + 43, string_hash_to_newline("Backspace - N/A"));
draw_text(472, __view_get( e__VW.YView, 1 ) + 21, string_hash_to_newline("R - Retry"));
draw_text(472, __view_get( e__VW.YView, 1 ) + 43, string_hash_to_newline("Ctrl + R - Same as R"));


for(var i = 0; i <= personIndex; i+=1)
{
    draw_sprite_ext(sprPlayerIdle, 0, __view_get( e__VW.XView, 1 ) + 80 + 24 * i, __view_get( e__VW.YView, 1 ) + 34, 0.6,0.6,0,c_white,1);
}

for(var i = personIndex + 1; i < 7; i+=1)
{
    draw_sprite_ext(sprPlayerIdle, 0, __view_get( e__VW.XView, 1 ) + 80 + 24 * i, __view_get( e__VW.YView, 1 ) + 34, 0.6, 0.6, 0, c_black, 0.6);
}
draw_set_color(c_green);
draw_line_width(__view_get( e__VW.XView, 1 ) + 66, __view_get( e__VW.YView, 1 ) + 45, __view_get( e__VW.XView, 1 ) + 66 + 24 * star3, __view_get( e__VW.YView, 1 ) + 45, 3);
draw_set_color(c_yellow);
draw_line_width(__view_get( e__VW.XView, 1 ) + 66 + 24 * star3, __view_get( e__VW.YView, 1 ) + 45, __view_get( e__VW.XView, 1 ) + 66 + 24 * star2, __view_get( e__VW.YView, 1 ) + 45, 3);
draw_set_color(c_red);
draw_line_width(__view_get( e__VW.XView, 1 ) + 66 + 24 * star2, __view_get( e__VW.YView, 1 ) + 45, __view_get( e__VW.XView, 1 ) + 66 + 24 * star1, __view_get( e__VW.YView, 1 ) + 45, 3);


draw_set_font(font24);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_alpha(1);
draw_text(768, __view_get( e__VW.YView, 1 ) + 32, string_hash_to_newline(string_format((round((totalTime * 50 - currentStep) / 5) / 10), 3, 1)));

draw_set_circle_precision(64);
draw_set_color(make_color_rgb(47,47,47));
draw_circle(672, __view_get( e__VW.YView, 1 ) + 32, 28, false);
draw_set_color(c_green);
drawArc(totalTime * 6,0.5, 27, 90, 672, __view_get( e__VW.YView, 1 ) + 32, true);
draw_set_color(c_orange);
drawArc(currentStep/50 * 6,0.5, 27, 90, 672, __view_get( e__VW.YView, 1 ) + 32, true);

draw_set_alpha(blackAlpha);
draw_set_color(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + 800, __view_get( e__VW.YView, 0 ) + 544, false);
draw_rectangle(__view_get( e__VW.XView, 1 ), __view_get( e__VW.YView, 1 ), __view_get( e__VW.XView, 1 ) + 800, __view_get( e__VW.YView, 1 ) + 64, false);




draw_reset();

