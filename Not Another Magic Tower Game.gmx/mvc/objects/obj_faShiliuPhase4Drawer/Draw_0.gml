yview = 0;
draw_set_halign(fa_right);
draw_set_font(font12);
draw_set_color(c_silver);
if(!instance_exists(obj_monsterBattlePrototype))
{
    draw_text(0 + 800 - 64, yview + 64 * sign(608), string_hash_to_newline(""));
}
else
{
    draw_text(0 + 800 - 64, yview + 64 * sign(608), string_hash_to_newline(obj_monsterBattlePrototype.name));
}


draw_set_halign(fa_left)
draw_text(0 + 64, yview + 64 * sign(608), string_hash_to_newline("Kid"));


if(global.GalleryBossFight)
{
    usedHp = global.GalleryBossFightHp;
}
else
{
    usedHp = global.hp;
}

if(usedHp > 0)
{
    drawMagicHP();
    if(usedHp < 233)
    {
        for(k = 0; k < floor(usedHp / 100); k+=1)
        {
            draw_sprite_ext(spr_hp, 0, __view_get( e__VW.XView, 0 ) + 64 + 24 * k, yview + 80 * sign(__view_get( e__VW.HView, 0 )), .75, .75, 0, c_white, 1);
        }
        
        for(j = 0; j < floor((usedHp mod 100) / 10); j+=1)
        {
            draw_sprite(spr_heart10, 0, __view_get( e__VW.XView, 0 ) + 64 + floor(usedHp / 100) * 24 + 20 * j, yview + 92 * sign(__view_get( e__VW.HView, 0 )));
        }
        
        for(i = 0; i < (usedHp mod 10); i+= 1)
        {
            draw_sprite(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) + 64 + floor(usedHp / 100) * 24 + 20 * floor((usedHp mod 100) / 10) + 14 * i, yview + 98 * sign(__view_get( e__VW.HView, 0 )));
        }
    }
    else
    {
        draw_sprite_ext(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) + 64, __view_get( e__VW.YView, 0 ) + 92, .75, .75, 0, c_white, 1);
        draw_set_font(fontBasicInfoMini);
        draw_set_color(c_silver);
        draw_set_halign(fa_left);
        draw_set_valign(fa_middle);
        draw_text(__view_get( e__VW.XView, 0 ) + 78, __view_get( e__VW.YView, 0 ) + 92, string_hash_to_newline("x " + string(usedHp)));
    }
}

if(obj_monsterBattlePrototype.hp < 233)
{
    for(k = 0; k < floor(obj_monsterBattlePrototype.hp / 100); k+=1)
    {
        draw_sprite_ext(spr_hp, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )  - 64 - 24 * (k + 1), yview + 80 * sign(__view_get( e__VW.HView, 0 )), .75, .75, 0, c_white, 1);
    }
    
    for(j = 0; j < floor((obj_monsterBattlePrototype.hp mod 100) / 10); j+=1)
    {
        draw_sprite(spr_heart10, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )  - 64 - floor(obj_monsterBattlePrototype.hp / 100) * 24 - 20 * (j + 1), yview + 92 * sign(__view_get( e__VW.HView, 0 )));
    }
    
    for(i = 0; i < (obj_monsterBattlePrototype.hp mod 10); i+= 1)
    {
        draw_sprite(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )  - 64 - floor(obj_monsterBattlePrototype.hp / 100) * 24 - 20 * floor((obj_monsterBattlePrototype.hp mod 100) / 10) - 14 * (i + 1), yview + 98 * sign(__view_get( e__VW.HView, 0 )));
    }
}
else
{
    draw_set_font(fontBasicInfoMini);
    draw_set_color(c_silver);
    draw_set_halign(fa_right);
    draw_set_valign(fa_middle);
    strWidth = string_width(string_hash_to_newline("x " + string(obj_monsterBattlePrototype.hp)));
    draw_text(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64, __view_get( e__VW.YView, 0 ) + 92, string_hash_to_newline("x " + string(obj_monsterBattlePrototype.hp)));
    draw_sprite_ext(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 64 - strWidth - 14, __view_get( e__VW.YView, 0 ) + 92, .75, .75, 0, c_white, 1);
}


draw_reset();
/*
if(global.hp > 0)
{
for(k = 0; k < floor(global.hp / 100); k+=1)
{
    draw_sprite_ext(spr_hp, 0, 0 + 64 + 24 * k, yview + 80 * sign(608), .75, .75, 0, c_white, 1);
}

for(j = 0; j < floor((global.hp mod 100) / 10); j+=1)
{
    draw_sprite(spr_heart10, 0, 0 + 64 + floor(global.hp / 100) * 24 + 20 * j, yview + 92 * sign(608));
}

for(i = 0; i < (global.hp mod 10); i+= 1)
{
    draw_sprite(spr_smallHeart, 0, 0 + 64 + floor(global.hp / 100) * 24 + 20 * floor((global.hp mod 100) / 10) + 14 * i, yview + 98 * sign(608));
}
}
for(k = 0; k < floor(obj_monsterBattlePrototype.hp / 100); k+=1)
{
    draw_sprite_ext(spr_hp, 0, 0 + 800  - 64 - 24 * (k + 1), yview + 80 * sign(608), .75, .75, 0, c_white, 1);
}

for(j = 0; j < floor((obj_monsterBattlePrototype.hp mod 100) / 10); j+=1)
{
    draw_sprite(spr_heart10, 0, 0 + 800  - 64 - floor(obj_monsterBattlePrototype.hp / 100) * 24 - 20 * (j + 1), yview + 92 * sign(608));
}

for(i = 0; i < (obj_monsterBattlePrototype.hp mod 10); i+= 1)
{
    draw_sprite(spr_smallHeart, 0, 0 + 800  - 64 - floor(obj_monsterBattlePrototype.hp / 100) * 24 - 20 * floor((obj_monsterBattlePrototype.hp mod 100) / 10) - 14 * (i + 1), yview + 98 * sign(608));
}



/* */
/*  */
