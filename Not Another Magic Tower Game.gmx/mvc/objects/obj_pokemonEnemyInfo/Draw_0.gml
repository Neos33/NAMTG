draw_current();
draw_set_alpha(1);
draw_set_font(fontPokemonInfo);
draw_set_color(c_black);

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_text(x + 306, y + 50, string_hash_to_newline(string(lv)));

draw_set_halign(fa_left);
draw_text(x + 32, y + 50, string_hash_to_newline(name));

hpPer = hp / fullHP;
if(hpPer > 0.5)
{
    draw_sprite_ext(spr_pokemonHP, 0, x + 167, y + 67, hpPer,1,0,c_white,1);
}
else if(hpPer > 0.25)
{
    draw_sprite_ext(spr_pokemonHP, 1, x + 167, y + 67, hpPer,1,0,c_white,1);
}
else if(hpPer > 0)
{
    draw_sprite_ext(spr_pokemonHP, 2, x + 167, y + 67, hpPer,1,0,c_white,1);
}

if(instance_exists(obj_monsterBattlePrototype))
{
    print(spIndex);
    draw_sprite_ext(spr_pokemonSpecies, 0, x + 56, y + 74, image_xscale,image_yscale,0,c_white, 1 - obj_monsterBattlePrototype.mixedAlpha);
    draw_sprite_ext(spr_pokemonSpecies, spIndex, x + 56, y + 74, image_xscale,image_yscale,0,c_white, obj_monsterBattlePrototype.mixedAlpha);
}
else
{
    draw_sprite(spr_pokemonSpecies, spIndex, x + 56, y + 74);
}


draw_set_color(c_white);
draw_set_valign(fa_top);


