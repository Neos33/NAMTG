draw_current();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fontBasicInfoMini);
if(index == 0)
{
    txt = "Fire";
}
else if(index == 1)
{
    txt = "Water";
}
else if(index == 2)
{
    txt = "Gold";
}
else if(index == 3)
{
    txt = "Dark";
}
else if(index == 4)
{
    txt = "Grass";
}
draw_text(x, y - 16 * image_yscale, string_hash_to_newline(string(txt)));

draw_reset_align();

