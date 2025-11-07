draw_set_circle_precision(32);
draw_set_color(c_green);
draw_set_alpha(alpha);
draw_sprite_ext(spr_osuStandardHitCircle, 0, x,y,1,1,0,c_white,0.9);
if(alpha == 1)
{
    draw_sprite_ext(spr_osuStandardApprochingCircle, 0, x, y, (radius + offset * spd) / 64, (radius + offset * spd) / 64, image_angle, c_white, 1);
    //draw_circle(x,y, radius + offset * spd, true);
}
//draw_circle(x,y,radius,false);
//draw_set_color(c_white);
//draw_circle(x,y,radius,true);
draw_set_font(font24);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(ind+1 < 10)
{
    draw_sprite(spr_osuStandardInd, ind + 1, x, y);
}
else
{
    draw_sprite(spr_osuStandardInd, floor((ind + 1) / 10), x - 8, y);
    draw_sprite(spr_osuStandardInd, (ind + 1) mod 10, x + 8, y);
}


draw_reset();
//draw_text(x,y,string(ind+1));

