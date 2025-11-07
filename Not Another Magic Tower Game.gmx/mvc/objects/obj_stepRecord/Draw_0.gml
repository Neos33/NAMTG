/*if(room == ExtraJKBonus)
    exit;
//draw_set_color(c_silver);
//draw_rectangle(0,view_yview[1],800,view_yview[1] + 64, false);

draw_set_color(c_black);
draw_set_font(fontBasicInfo);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_alpha(1);
draw_text(16, view_yview[1] + 32, "Lives:");
draw_set_font(fontBasicInfoMini);
draw_text(240, view_yview[1] + 21, "Down - Back to Start Position");
draw_text(240, view_yview[1] + 43, "Backspace - Return Portal Room");
draw_text(472, view_yview[1] + 21, "R - Retry Current Life");
draw_text(472, view_yview[1] + 43, "Ctrl + R - Load Game");


for(i = 0; i <= personIndex; i+=1)
{
    draw_sprite_ext(sprPlayerIdle, 0, view_xview[1] + 80 + 24 * i, view_yview[1] + 34, 0.6,0.6,0,c_white,1);
}

for(i = personIndex + 1; i < 7; i+=1)
{
    draw_sprite_ext(sprPlayerIdle, 0, view_xview[1] + 80 + 24 * i, view_yview[1] + 34, 0.6, 0.6, 0, c_black, 0.6);
}
draw_set_color(c_green);
draw_line_width(view_xview[1] + 66, view_yview[1] + 45, view_xview[1] + 66 + 24 * star3, view_yview[1] + 45, 3);
draw_set_color(c_yellow);
draw_line_width(view_xview[1] + 66 + 24 * star3, view_yview[1] + 45, view_xview[1] + 66 + 24 * star2, view_yview[1] + 45, 3);
draw_set_color(c_red);
draw_line_width(view_xview[1] + 66 + 24 * star2, view_yview[1] + 45, view_xview[1] + 66 + 24 * star1, view_yview[1] + 45, 3);


draw_set_font(font24);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_alpha(1);
draw_text(768, view_yview[1] + 32, string_format((round((totalTime * 50 - currentStep) / 5) / 10), 3, 1));

draw_set_circle_precision(64);
draw_set_color(make_color_rgb(47,47,47));
draw_circle(672, view_yview[1] + 32, 28, false);
draw_set_color(c_green);
drawArc(totalTime * 6,0.5, 27, 90, 672, view_yview[1] + 32, true);
draw_set_color(c_orange);
drawArc(currentStep/50 * 6,0.5, 27, 90, 672, view_yview[1] + 32, true);

draw_set_alpha(blackAlpha);
draw_set_color(c_black);
draw_rectangle(view_xview[0], view_yview[0], view_xview[0] + 800, view_yview[0] + 544, false);
draw_rectangle(view_xview[1], view_yview[1], view_xview[1] + 800, view_yview[1] + 64, false);


/* */
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
draw_text(240, __view_get( e__VW.YView, 1 ) + 43, string_hash_to_newline("Backspace - Return Portal Room"));
draw_text(472, __view_get( e__VW.YView, 1 ) + 21, string_hash_to_newline("R - Retry Current Life"));
draw_text(472, __view_get( e__VW.YView, 1 ) + 43, string_hash_to_newline("Ctrl + R - Load Game"));


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
//draw_set_color(c_green);
//drawArc(totalTime * 6,0.5, 27, 90, 672, view_yview[1] + 32, true);
//draw_set_color(c_orange);
//drawArc(currentStep/50 * 6,0.5, 27, 90, 672, view_yview[1] + 32, true);

var i, steps, xx, yy, radius;
steps = 64;
xx = 672;
yy = __view_get( e__VW.YView, 1 )+32;
radius = 27;

draw_set_color(c_green);
draw_primitive_begin(pr_trianglefan);
draw_vertex(xx, yy);
for( i = 0; i <= steps i += 1)
{
    draw_vertex(xx + lengthdir_x(radius, 90 - totalTime * 6 * i / steps), yy + lengthdir_y(radius, 90 - totalTime * 6 * i / steps));
}
draw_primitive_end();
draw_set_color(c_orange);
draw_primitive_begin(pr_trianglefan);
draw_vertex(xx, yy);
for( i = 0; i <= steps i += 1)
{
    draw_vertex(xx + lengthdir_x(radius, 90 - currentSteps/50 * 6 * i / steps), yy + lengthdir_y(radius, 90 - currentSteps/50 * 6 * i / steps));
}
draw_primitive_end();
if(currentSteps == 0)
{
    drawArc(currentStep/50 * 6,0.5, 27, 90, 672, __view_get( e__VW.YView, 1 ) + 32, true);
}



draw_set_alpha(blackAlpha);
draw_set_color(c_black);
draw_rectangle(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + 800, __view_get( e__VW.YView, 0 ) + 544, false);
draw_rectangle(__view_get( e__VW.XView, 1 ), __view_get( e__VW.YView, 1 ), __view_get( e__VW.XView, 1 ) + 800, __view_get( e__VW.YView, 1 ) + 64, false);




draw_reset();

/* */
/*  */
