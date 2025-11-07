if(dontDraw)
    exit;

/// Monster name info

draw_set_halign(fa_right);
draw_set_font(font12);
draw_set_color(c_silver);
draw_set_alpha(1);
if(!instance_exists(obj_monsterBattlePrototype))
{
    if(global.reverse == 0)
    {
        draw_text(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64, __view_get( e__VW.YView, 0 ) + 64, string_hash_to_newline(""));
    }
    else if(__view_get( e__VW.Angle, 0 ) != 0)
    {
        draw_set_halign(fa_left);
        draw_text_transformed(__view_get( e__VW.XView, 0 ) + 64, __view_get( e__VW.HView, 0 ) - 64, string_hash_to_newline(""), 1, -1, 0);
    }
}
else
{
    if(global.reverse == 0)
    {
        draw_text(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64, __view_get( e__VW.YView, 0 ) + 64, string_hash_to_newline(obj_monsterBattlePrototype.name));
    }
    else
    {
        draw_set_halign(fa_left);
        strWidth = string_width(string_hash_to_newline(obj_monsterBattlePrototype.name));
        draw_text_transformed(__view_get( e__VW.XView, 0 ) + 64 + strWidth, __view_get( e__VW.HView, 0 ) - 64, string_hash_to_newline(obj_monsterBattlePrototype.name), -1, -1, 0);
    }
}




/// Kid info
draw_set_halign(fa_left)
if(global.reverse == 0)
{
    draw_text(__view_get( e__VW.XView, 0 ) +64, __view_get( e__VW.YView, 0 ) + 64, string_hash_to_newline("Kid"));
}
else
{
    draw_set_halign(fa_right);
    strWidth = string_width(string_hash_to_newline("Kid"));
    draw_text_transformed(__view_get( e__VW.WView, 0 ) - 64 - strWidth, __view_get( e__VW.HView, 0 ) - 64, string_hash_to_newline("Kid"), -1, -1, 0);
}

if(global.GalleryBossFight)
{
    usedHp = global.GalleryBossFightHp;
}
else
{
    usedHp = global.hp;
}

if(player_is_alive() || instance_exists(player2))
{
    drawMagicHP();
    if(usedHp < 233 && !numOnly)
    {
        if(global.reverse == 0)
        {
            for(k = 0; k < floor(usedHp / 100); k+=1)
            {
                draw_sprite_ext(spr_hp, 0, __view_get( e__VW.XView, 0 ) +64 + 24 * k, __view_get( e__VW.YView, 0 ) + 80+8, .75, .75, 0, c_white, 1);
            }
            
            for(j = 0; j < floor((usedHp mod 100) / 10); j+=1)
            {
                draw_sprite(spr_heart10, 0, __view_get( e__VW.XView, 0 ) +64 + floor(usedHp / 100) * 24 + 20 * j, __view_get( e__VW.YView, 0 ) + 92+8);
            }
            
            for(i = 0; i < (usedHp mod 10); i+= 1)
            {
                draw_sprite(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) +64 + floor(usedHp / 100) * 24 + 20 * floor((usedHp mod 100) / 10) + 14 * i, __view_get( e__VW.YView, 0 ) + 98+8);
            }
        }
        else
        {
            for(k = 0; k < floor(usedHp / 100); k+=1)
            {
                draw_sprite_ext(spr_hp, 0, __view_get( e__VW.WView, 0 ) - 64 - 24 * k, __view_get( e__VW.HView, 0 ) - 80, -.75, -.75, 0, c_white, 1);
            }
            
            for(j = 0; j < floor((usedHp mod 100) / 10); j+=1)
            {
                draw_sprite_ext(spr_heart10, 0, __view_get( e__VW.WView, 0 ) -64 - floor(usedHp / 100) * 24 - 20 * j, __view_get( e__VW.HView, 0 ) - 92, -1, -1, 0, c_white, 1);
            }
            
            for(i = 0; i < (usedHp mod 10); i+= 1)
            {
                draw_sprite_ext(spr_smallHeart, 0, __view_get( e__VW.WView, 0 ) -64 - floor(usedHp / 100) * 24 - 20 * floor((usedHp mod 100) / 10) - 14 * i, __view_get( e__VW.HView, 0 ) - 98,-1,-1,0,c_white,1);
            }
        }
    }
    else
    {
        if(global.reverse == 0)
        {
            draw_sprite_ext(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) +64, __view_get( e__VW.YView, 0 ) + 92, .75, .75, 0, c_white, 1);
            draw_set_font(fontBasicInfoMini);
            draw_set_color(c_silver);
            draw_set_halign(fa_left);
            draw_set_valign(fa_middle);
            draw_text(__view_get( e__VW.XView, 0 ) +78, __view_get( e__VW.YView, 0 ) + 92, string_hash_to_newline("x " + string(usedHp)));
        }
        else
        { 
            draw_set_font(fontBasicInfoMini);
            draw_set_color(c_silver);
            draw_set_halign(fa_right);
            draw_set_valign(fa_middle);
            strWidth = string_width(string_hash_to_newline("x " + string(usedHp)));
            draw_text_transformed(__view_get( e__VW.WView, 0 ) -64 - strWidth - 14, __view_get( e__VW.HView, 0 ) - 92, string_hash_to_newline("x " + string(usedHp)), -1, -1, 0);
            draw_sprite_ext(spr_smallHeart, 0, __view_get( e__VW.WView, 0 ) - 64, __view_get( e__VW.HView, 0 ) - 92, -.75, -.75, 0, c_white, 1);
        }
    }
}



/// Monster HP info
if !instance_exists(obj_monsterBattlePrototype)
    exit;
if(dontDrawMonster) exit;
if(obj_monsterBattlePrototype.hp < 233 && !numOnly)
{
    if(global.reverse == 0)
    {
        for(k = 0; k < floor(obj_monsterBattlePrototype.hp / 100); k+=1)
        {
            draw_sprite_ext(spr_hp, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64 - 24 * (k + 1), __view_get( e__VW.YView, 0 ) + 80, .75, .75, 0, c_white, 1);
        }
        
        for(j = 0; j < floor((obj_monsterBattlePrototype.hp mod 100) / 10); j+=1)
        {
            draw_sprite(spr_heart10, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64 - floor(obj_monsterBattlePrototype.hp / 100) * 24 - 20 * (j + 1), __view_get( e__VW.YView, 0 ) + 92);
        }
        
        for(i = 0; i < (obj_monsterBattlePrototype.hp mod 10); i+= 1)
        {
            draw_sprite(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64 - floor(obj_monsterBattlePrototype.hp / 100) * 24 - 20 * floor((obj_monsterBattlePrototype.hp mod 100) / 10) - 14 * (i + 1), __view_get( e__VW.YView, 0 ) + 98);
        }
    }
    else
    {
        for(k = 0; k < floor(obj_monsterBattlePrototype.hp / 100); k+=1)
        {
            draw_sprite_ext(spr_hp, 0, __view_get( e__VW.XView, 0 ) + 64 + 24 * (k + 1), __view_get( e__VW.HView, 0 ) - 80, -.75, -.75, 0, c_white, 1);
        }
        
        for(j = 0; j < floor((obj_monsterBattlePrototype.hp mod 100) / 10); j+=1)
        {
            draw_sprite_ext(spr_heart10, 0, __view_get( e__VW.XView, 0 ) + 64 + floor(obj_monsterBattlePrototype.hp / 100) * 24 + 20 * (j + 1), __view_get( e__VW.HView, 0 ) - 92, -1, -1, 0, c_white, 1);
        }
        
        for(i = 0; i < (obj_monsterBattlePrototype.hp mod 10); i+= 1)
        {
            draw_sprite_ext(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) + 64 + floor(obj_monsterBattlePrototype.hp / 100) * 24 + 20 * floor((obj_monsterBattlePrototype.hp mod 100) / 10) + 14 * (i + 1), __view_get( e__VW.HView, 0 ) - 98,-1,-1,0,c_white,1);
        }
    }
}
else
{
    if(global.reverse == 0)
    {
        draw_set_font(fontBasicInfoMini);
        draw_set_color(c_silver);
        draw_set_halign(fa_right);
        draw_set_valign(fa_middle);
        strWidth = string_width(string_hash_to_newline("x " + string(obj_monsterBattlePrototype.hp)));
        draw_text(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64, __view_get( e__VW.YView, 0 ) + 92, string_hash_to_newline("x " + string(obj_monsterBattlePrototype.hp)));
        draw_sprite_ext(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64 - strWidth - 14, __view_get( e__VW.YView, 0 ) + 92, .75, .75, 0, c_white, 1);
    }
    else
    {
        draw_set_font(fontBasicInfoMini);
        draw_set_color(c_silver);
        draw_set_halign(fa_left);
        draw_set_valign(fa_middle);
        draw_text_transformed(__view_get( e__VW.XView, 0 ) + 78, __view_get( e__VW.HView, 0 ) - 92, string_hash_to_newline("x " + string(obj_monsterBattlePrototype.hp)),-1,-1,0);
        draw_sprite_ext(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) + 64, __view_get( e__VW.HView, 0 ) - 92, -.75, -.75, 0, c_white, 1);
    }
}


draw_reset();

