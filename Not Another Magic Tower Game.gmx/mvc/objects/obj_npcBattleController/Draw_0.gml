draw_set_font(font12);
draw_set_alpha(1);

if(global.GalleryBossFight)
{
    usedHp = global.GalleryBossFightHp;
}
else
{
    usedHp = global.hp;
}

if(player_is_alive())
{
    draw_sprite_ext(spr_smallHeart, 0, player.x - 16, player.y - 32, .75, .75, 0, c_white, 1);
    draw_set_font(fontBasicInfoMini);
    draw_set_color(c_silver);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_text(player.x - 2, player.y - 32, string_hash_to_newline("x " + string(usedHp)));
    if(!global.GalleryBossFight && global.MagicCloak && global.MagicHP > 0)
    {
        draw_sprite(spr_magicShield,0,player.x-16,player.y-48);
        draw_text(player.x - 2, player.y - 48, string_hash_to_newline("x " + string(global.MagicHP)));
    }
}

draw_set_color(c_black);
draw_rectangle(0,0,800,32,false);
draw_rectangle(0,576,800,608,false);

if(instance_exists(obj_npcBattleNPC1))
{
    draw_set_color(c_blue);
    draw_rectangle(0, 0, obj_npcBattleNPC1.hp * perHp, 16,false);
}

if(instance_exists(obj_npcBattleNPC2))
{
    draw_set_color(c_red);
    draw_rectangle(0, 16, obj_npcBattleNPC2.hp * perHp, 32,false);
}


if(instance_exists(obj_npcBattleNPC3))
{
    draw_set_color(c_yellow);
    draw_rectangle(0, 576, obj_npcBattleNPC3.hp * perHp, 592,false);
}


if(instance_exists(obj_npcBattleNPC4))
{
    draw_set_color(c_green);
    draw_rectangle(0, 592, obj_npcBattleNPC4.hp * perHp, 608,false);
}



draw_reset();

