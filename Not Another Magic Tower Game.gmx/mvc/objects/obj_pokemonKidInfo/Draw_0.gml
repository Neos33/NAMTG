draw_current();
draw_set_alpha(1);
draw_set_font(fontPokemonInfo);
draw_set_color(c_black);

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text(x + 341, y + 50, string_hash_to_newline(string(lv)));

draw_set_halign(fa_left);
draw_text(x + 77, y + 50, string_hash_to_newline("Kid"));

hpPer = hp / fullHP;
if(hpPer > 0.5)
{
    draw_sprite_ext(spr_pokemonHP, 0, x + 206, y + 67, hpPer,1,0,c_white,1);
}
else if(hpPer > 0.25)
{
    draw_sprite_ext(spr_pokemonHP, 1, x + 206, y + 67, hpPer,1,0,c_white,1);
}
else if(hpPer > 0)
{
    draw_sprite_ext(spr_pokemonHP, 2, x + 206, y + 67, hpPer,1,0,c_white,1);
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x + 304, y + 105, string_hash_to_newline(string(RangeClamp(hp,0,fullHP)) + " / " + string(fullHP)));

draw_sprite(spr_pokemonSpecies, 0, x + 96, y + 74);



draw_reset_align();
draw_set_color(c_white);

