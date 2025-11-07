draw_current();
if(draw)
{
    draw_set_color(c_black);
    draw_set_font(fontBasicInfoMini);
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
    draw_text(x + 16, y - 16, string_hash_to_newline(msg));
}

draw_reset();

