draw_sprite_stretched(spr_redKnightCoin,0,__view_get( e__VW.XView, 0 ) + 400 - 170,__view_get( e__VW.YView, 0 ) + 8,16,16);
draw_set_font(font12);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_color(c_yellow);
draw_set_alpha(1);
draw_text(__view_get( e__VW.XView, 0 ) + 400 - 170 + 16 + 5, __view_get( e__VW.YView, 0 ) + 16,string_hash_to_newline("x " + string(obj_redKnightController.coinGet)));
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_text(__view_get( e__VW.XView, 0 ) + 400 + 170, __view_get( e__VW.YView, 0 ) + 16,string_hash_to_newline(string(obj_redKnightController.meter) + "m"));

if(instance_exists(obj_achievements))
{
    draw_sprite(obj_achievements.sprite_index,0,0,__view_get( e__VW.YView, 0 ) + obj_achievements.y);
}

draw_reset_align();

