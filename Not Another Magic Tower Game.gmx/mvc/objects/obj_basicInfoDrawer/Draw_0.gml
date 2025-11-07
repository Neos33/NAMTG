if(!special)
{
    if(debug)
    {
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_color(c_white);
        draw_set_alpha(1);
        draw_set_font(font12);
        draw_sprite(spr_yellowKey,0,startX, startY);
        draw_text(startX + 48, startY + 16, string_hash_to_newline(global.yellowKeyNum));
        
        draw_sprite(spr_blueKey,0,startX + 96 * 1, startY);
        draw_text(startX + 96 * 1 + 48, startY + 16, string_hash_to_newline(global.blueKeyNum));
        
        draw_sprite(spr_redKey,0,startX + 96 * 2, startY);
        draw_text(startX + 96 * 2 + 48, startY + 16, string_hash_to_newline(global.redKeyNum));
        
        draw_sprite(spr_greenKey,0,startX + 96 * 3, startY);
        draw_text(startX + 96 * 3 + 48, startY + 16, string_hash_to_newline(global.greenKeyNum));
        
        draw_sprite(spr_ironKey,0,startX + 96 * 4, startY);
        draw_text(startX + 96 * 4 + 48, startY + 16, string_hash_to_newline(global.ironKeyNum));
        
        draw_sprite(spr_attUp1, 0, startX, startY + 64);
        draw_text(startX + 48, startY + 64 + 16, string_hash_to_newline(global.attack));
        
        draw_sprite(spr_defUp1, 0, startX + 96 * 1, startY + 64);
        draw_text(startX + 96 * 1 + 48, startY + 64 + 16, string_hash_to_newline(global.defense));
        
        draw_sprite(spr_hpUp1, 0, startX + 96 * 2, startY + 64);
        draw_text(startX + 96 * 2 + 48, startY + 64 + 16, string_hash_to_newline(global.hp));
    }
    else if(!special)
    {
        if player_is_alive()
        {
            draw_sprite(player.sprite_index, player.image_index, 48 + 17, 48 + 23);
        }
        draw_set_alpha(1);
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_set_color(c_silver);
        draw_set_font(fontBasicInfo);
        draw_text(128, 48 + 12, string_hash_to_newline("F"));
        baseInfoX = 48;
        baseInfoY = 128;
        if(global.currentLevel == 11)
        {
            draw_text(baseInfoX, baseInfoY, string_hash_to_newline("Level MAX"));
        }
        else
        {
            draw_text(baseInfoX, baseInfoY, string_hash_to_newline("Level"));
        }
        draw_text(baseInfoX, baseInfoY + 8 + 48 * 1, string_hash_to_newline("HP"));
        draw_text(baseInfoX, baseInfoY + 8 + 48 * 2, string_hash_to_newline("Atk"));
        draw_text(baseInfoX, baseInfoY + 8 + 48 * 3, string_hash_to_newline("Def"));
        
        draw_sprite(spr_yellowKey, 0,baseInfoX, baseInfoY + 200);
        draw_sprite(spr_blueKey, 0,baseInfoX, baseInfoY + 200 + 48 * 1);
        draw_sprite(spr_redKey, 0,baseInfoX, baseInfoY + 200 + 48 * 2);
        draw_sprite(spr_greenKey, 0,baseInfoX, baseInfoY + 200 + 48 * 3);
        draw_sprite(spr_ironKey, 0,baseInfoX, baseInfoY + 200 + 48 * 4);
        
        draw_set_color(c_white);
        draw_set_halign(fa_right);
        draw_text(112, 48 + 12, string_hash_to_newline(global.currentFloor));
        
        if(global.currentLevel != 11)
        {
            draw_text(132, baseInfoY, string_hash_to_newline(global.currentLevel));
        }
        draw_sprite(spr_progressbarBg_Small, 0, baseInfoX - 2, baseInfoY + 24 + 4);
        draw_sprite_part(spr_progressbar_Small,0,0,0, levelExp / levelRequired * 96,10,baseInfoX - 2,baseInfoY + 24 + 4); 
        draw_text(132, baseInfoY + 8 + 48 * 1, string_hash_to_newline(global.hp));
        draw_text(132, baseInfoY + 8 + 48 * 2, string_hash_to_newline(global.attack));
        draw_text(132, baseInfoY + 8 + 48 * 3, string_hash_to_newline(global.defense));
        
        draw_text(132, baseInfoY + 200 + 48 * 0, string_hash_to_newline(global.yellowKeyNum));
        draw_text(132, baseInfoY + 200 + 48 * 1, string_hash_to_newline(global.blueKeyNum));
        draw_text(132, baseInfoY + 200 + 48 * 2, string_hash_to_newline(global.redKeyNum));
        draw_text(132, baseInfoY + 200 + 48 * 3, string_hash_to_newline(global.greenKeyNum));
        draw_text(132, baseInfoY + 200 + 48 * 4, string_hash_to_newline(global.ironKeyNum));
        
        draw_set_font(fontExp);
        draw_set_valign(fa_middle);
        draw_set_color(c_silver);
        draw_text(baseInfoX - 2 + 96 - 2,baseInfoY + 24 + 4 + 5, string_hash_to_newline(string(levelExp) + "/" + string(levelRequired)));
    }
}

draw_reset();

