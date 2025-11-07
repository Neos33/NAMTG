draw_set_blend_mode(bm_add);
draw_current();
draw_set_blend_mode(bm_normal);
draw_set_alpha(1);
draw_set_font(fontBasicInfoMiniBold);
draw_set_color(c_silver);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if(rushInd != 9)
{
    draw_text(x, y - 48, string_hash_to_newline(setName + "(" + string(acceptableHits) + ")"));
}
else
{
    draw_text(x, y - 68, string_hash_to_newline(setName));
}

draw_reset();

