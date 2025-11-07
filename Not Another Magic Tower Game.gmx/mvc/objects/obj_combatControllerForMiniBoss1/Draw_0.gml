draw_set_halign(fa_right);
draw_set_font(font12);
draw_set_color(c_silver);
if(!instance_exists(obj_monsterBattlePrototype))
{
    draw_text(room_width - 64, 64, string_hash_to_newline(""));
}
else
{
    draw_text(room_width - 64, 64, string_hash_to_newline(obj_monsterBattlePrototype.name));
}


draw_set_halign(fa_left)
draw_text(64, 64, string_hash_to_newline("Kid"));

if(global.GalleryBossFight)
{
    usedHp = global.GalleryBossFightHp;
}
else
{
    usedHp = global.hp;
}

for(k = 0; k < floor(usedHp / 100); k+=1)
{
    draw_sprite_ext(spr_hp, 0, 64 + 24 * k, 80, .75, .75, 0, c_white, 1);
}

for(j = 0; j < floor((usedHp mod 100) / 10); j+=1)
{
    draw_sprite(spr_heart10, 0, 64 + floor(usedHp / 100) * 24 + 20 * j, 92);
}

for(i = 0; i < (usedHp mod 10); i+= 1)
{
    draw_sprite(spr_smallHeart, 0, 64 + floor(usedHp / 100) * 24 + 20 * floor((usedHp mod 100) / 10) + 14 * i, 98);
}

for(k = 0; k < floor(obj_monsterBattlePrototype.hp / 100); k+=1)
{
    draw_sprite_ext(spr_hp, 0, room_width - 64 - 24 * (k + 1), 80, .75, .75, 0, c_white, 1);
}

for(j = 0; j < floor((obj_monsterBattlePrototype.hp mod 100) / 10); j+=1)
{
    draw_sprite(spr_heart10, 0, room_width - 64 - floor(obj_monsterBattlePrototype.hp / 100) * 24 - 20 * (j + 1), 92);
}

for(i = 0; i < (obj_monsterBattlePrototype.hp mod 10); i+= 1)
{
    draw_sprite(spr_smallHeart, 0, room_width - 64 - floor(obj_monsterBattlePrototype.hp / 100) * 24 - 20 * floor((obj_monsterBattlePrototype.hp mod 100) / 10) - 14 * (i + 1), 98);
}


draw_reset();

