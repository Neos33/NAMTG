draw_set_halign(fa_right);
draw_set_font(font12);
draw_set_color(c_silver);
draw_set_alpha(1);
if(!instance_exists(obj_monsterBattlePrototype))
{
    draw_text(__view_get( e__VW.XView, 1 ) + __view_get( e__VW.WView, 1 ) - 64, __view_get( e__VW.YView, 0 ) + 64, string_hash_to_newline(""));
}
else
{
    var _name = obj_monsterBattlePrototype.name;
    draw_text(__view_get( e__VW.XView, 1 ) + __view_get( e__VW.WView, 1 ) - 64, __view_get( e__VW.YView, 1 ) + 64, string_hash_to_newline(_name));
}


draw_set_halign(fa_left)
draw_text(__view_get( e__VW.XView, 0 ) +64, __view_get( e__VW.YView, 0 ) + 64, string_hash_to_newline("Kid"));

if(global.GalleryBossFight)
{
    var usedHp = global.GalleryBossFightHp;
}
else
{
    var usedHp = global.hp;
}

if(player_is_alive())
{
    drawMagicHP();
    if(usedHp < 233)
    {
        for(var k = 0; k < floor(usedHp / 100); k+=1)
        {
            draw_sprite_ext(spr_hp, 0, __view_get( e__VW.XView, 0 ) +64 + 24 * k, __view_get( e__VW.YView, 0 ) + 80, .75, .75, 0, c_white, 1);
        }
        
        for(var j = 0; j < floor((usedHp mod 100) / 10); j+=1)
        {
            draw_sprite(spr_heart10, 0, __view_get( e__VW.XView, 0 ) +64 + floor(usedHp / 100) * 24 + 20 * j, __view_get( e__VW.YView, 0 ) + 92);
        }
        
        for(var i = 0; i < (usedHp mod 10); i+= 1)
        {
            draw_sprite(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) +64 + floor(usedHp / 100) * 24 + 20 * floor((usedHp mod 100) / 10) + 14 * i, __view_get( e__VW.YView, 0 ) + 98);
        }
    }
    else
    {
        draw_sprite_ext(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) +64, __view_get( e__VW.YView, 0 ) + 92, .75, .75, 0, c_white, 1);
        draw_set_font(fontBasicInfoMini);
        draw_set_color(c_silver);
        draw_set_halign(fa_left);
        draw_set_valign(fa_middle);
        draw_text(__view_get( e__VW.XView, 0 ) +78, __view_get( e__VW.YView, 0 ) + 92, string_hash_to_newline("x " + string(usedHp)));
    }
}

if(dontDrawMonster) exit;
if instance_exists(obj_monsterBattlePrototype)
{
    if(obj_monsterBattlePrototype.hp < 233)
    {
        for(var k = 0; k < floor(obj_monsterBattlePrototype.hp / 100); k+=1)
        {
            draw_sprite_ext(spr_hp, 0, __view_get( e__VW.XView, 1 ) + __view_get( e__VW.WView, 1 ) - 64 - 24 * (k + 1), __view_get( e__VW.YView, 0 ) + 80, .75, .75, 0, c_white, 1);
        }
        
        for(var j = 0; j < floor((obj_monsterBattlePrototype.hp mod 100) / 10); j+=1)
        {
            draw_sprite(spr_heart10, 0, __view_get( e__VW.XView, 1 ) + __view_get( e__VW.WView, 1 ) - 64 - floor(obj_monsterBattlePrototype.hp / 100) * 24 - 20 * (j + 1), __view_get( e__VW.YView, 1 ) + 92);
        }
        
        for(var i = 0; i < (obj_monsterBattlePrototype.hp mod 10); i+= 1)
        {
            draw_sprite(spr_smallHeart, 0, __view_get( e__VW.XView, 1 ) + __view_get( e__VW.WView, 1 ) - 64 - floor(obj_monsterBattlePrototype.hp / 100) * 24 - 20 * floor((obj_monsterBattlePrototype.hp mod 100) / 10) - 14 * (i + 1), __view_get( e__VW.YView, 1 ) + 98);
        }
    }
    else
    {
        draw_set_font(fontBasicInfoMini);
        draw_set_color(c_silver);
        draw_set_halign(fa_right);
        draw_set_valign(fa_middle);
        var strWidth = string_width(string_hash_to_newline("x " + string(obj_monsterBattlePrototype.hp)));
        draw_text(__view_get( e__VW.XView, 1 ) + __view_get( e__VW.WView, 1 ) - 64, __view_get( e__VW.YView, 1 ) + 92, string_hash_to_newline("x " + string(obj_monsterBattlePrototype.hp)));
        draw_sprite_ext(spr_smallHeart, 0, __view_get( e__VW.XView, 1 ) + __view_get( e__VW.WView, 0 ) - 64 - strWidth - 14, __view_get( e__VW.YView, 1 ) + 92, .75, .75, 0, c_white, 1);
    }
}

draw_reset();

