draw_current();
if(global.mmmMedals[image_index] >= 0)
{
    draw_set_halign(fa_center);
    draw_set_font(fontMMM1);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text_transformed(x + 6,y + 26, string_hash_to_newline(string(global.mmmMedals[image_index])), 0.8, 0.8, -80);
    draw_reset_align();
}

