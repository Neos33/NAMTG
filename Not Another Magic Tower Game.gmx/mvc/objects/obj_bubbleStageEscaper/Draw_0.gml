draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_olive);
draw_set_font(fontBasicInfo);
if(room == ExtraBubbleBonus)
{
    draw_text(x,y, string_hash_to_newline("Backspace: Return Portal Room"));
}
else
{
    draw_text(x,y, string_hash_to_newline("Tab: Switch Item,  Backspace: Return Portal Room"));
}


draw_set_color(c_white);

