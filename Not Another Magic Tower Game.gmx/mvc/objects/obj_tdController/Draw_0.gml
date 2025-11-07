
draw_set_alpha(1);
draw_set_color(c_silver);
draw_set_font(fontBEInfo);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(64,504,string_hash_to_newline("Enemy"));
draw_text(736,504,string_hash_to_newline("Kid"));

draw_text(400,480,string_hash_to_newline("Round " + string(currentIndex + 1))); 

if(instance_number(tdMonster[currentIndex]) == 0 || isBoss)
{
    draw_set_font(font12);
    if(!isBoss)
        draw_text(64,544,string_hash_to_newline("???"));

    if(isBoss)
    {
        if(instance_exists(obj_darkLord_combat))
        {
            draw_sprite_ext(spr_darkLord_combat, obj_darkLord_combat.image_index, 64, 544, 1.5, 1.5, 0, c_white, 1);
            draw_sprite_ext(spr_darkLord_combat, obj_darkLord_combat.image_index, 400, 544, 2.5, 2.5, 0, c_white, 1);
            draw_text(64,580,string_hash_to_newline("Dark Lord"));
        } 
        else
        {
            draw_sprite_ext(spr_darkLord_combat, 0, 400, 544, 2.5, 2.5, 0, c_gray, 1);
        }
    }
    draw_set_halign(fa_left);
    draw_text(136,536, string_hash_to_newline("Attack:"));
    draw_text(136,560, string_hash_to_newline("Defense:"));
    draw_text(136,584, string_hash_to_newline("Max Hp:"));
    
    if(isBoss)
    {
        draw_text(216,536, string_hash_to_newline(string(obj_darkLord_combat.atk)));
        draw_text(216,560, string_hash_to_newline(string(obj_darkLord_combat.def)));
        draw_text(216,584, string_hash_to_newline(string(obj_darkLord_combat.hp)));
    }
}
else
{
    draw_set_font(font12);
    if(tdSpr[currentIndex])
    {
        draw_sprite_ext(tdSpr[currentIndex], (time/5) mod 4, 64, 544, 1.5, 1.5, 0, c_white, 1);
        
        draw_text(64,580,string_hash_to_newline(tdMName[currentIndex]));
    }
    
    draw_set_halign(fa_left);
    draw_text(136,536, string_hash_to_newline("Attack:"));
    draw_text(136,560, string_hash_to_newline("Defense:"));
    draw_text(136,584, string_hash_to_newline("Max Hp:"));

    draw_text(216,536, string_hash_to_newline(string(tdMAtk[currentIndex])));
    draw_text(216,560, string_hash_to_newline(string(tdMDef[currentIndex])));
    draw_text(216,584, string_hash_to_newline(string(tdMHP[currentIndex])));
}

draw_text(800-248,536, string_hash_to_newline("Attack:"));
draw_text(800-248,560, string_hash_to_newline("Defense:"));
draw_text(800-248,584, string_hash_to_newline("Hp:"));

draw_text(800-168,536, string_hash_to_newline(string(global.attack)));
draw_text(800-168,560, string_hash_to_newline(string(global.defense)));
draw_text(800-168,584, string_hash_to_newline(string(RangeClamp(global.hp, 0, 10000))));

if(player_is_alive())
{
    draw_sprite_ext(player.sprite_index, player.image_index, 736, 560, player.image_xscale, 1, 0, c_white, 1);
}

time += 1;


draw_reset();

