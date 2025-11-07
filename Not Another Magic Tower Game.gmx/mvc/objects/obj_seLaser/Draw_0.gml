draw_set_color(color);
draw_set_alpha(alpha * alpha2);
draw_line_width(ox, oy, x, y, 3);
draw_set_alpha(alpha2);
draw_line_width(ox, oy, x, y, 1);
draw_set_blend_mode(bm_add);
draw_sprite_ext(spr_seRedEvilEye,0,1,1,1,1,angle,c_white,1);
draw_set_blend_mode(bm_normal);

draw_reset_color();

