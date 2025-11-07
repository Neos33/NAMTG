draw_current();
if(current < limit)
{
    draw_sprite_ext(spr_starForStas, 0, x - 30, y - 5, 0.2,0.2,0,c_white,1);
    draw_set_font(fontBasicInfoMiniBold);
    draw_set_color(c_yellow);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_text(x-2,y-4, string_hash_to_newline("X  " + string(limit)));
    
    draw_set_color(c_white);
}

