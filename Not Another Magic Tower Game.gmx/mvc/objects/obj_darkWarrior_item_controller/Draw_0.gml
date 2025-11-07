var vGap = 40;
draw_set_font(font_leftmenu);
draw_set_color(c_silver);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(1);
//draw_text(lIndent,48, "Name:");
draw_text(96, 48, string_hash_to_newline("Dark Warrior"));

draw_set_font(fontBasicInfo);
draw_set_halign(fa_left);
draw_text(lIndent,vIndent + vGap, string_hash_to_newline("Atk:"));
draw_text(lIndent + 80, vIndent + vGap, string_hash_to_newline(string(global.mAtk)));
draw_text(lIndent,vIndent + vGap * 2, string_hash_to_newline("Def:"));
draw_text(lIndent + 80, vIndent + vGap * 2, string_hash_to_newline(string(global.mDef)));
draw_text(lIndent,vIndent + vGap * 3, string_hash_to_newline("Hp:"));
if instance_exists(obj_darkWarrior_combat)
{
    draw_text(lIndent + 80, vIndent + vGap * 3, string_hash_to_newline(string(obj_darkWarrior_combat.hp)));
}

vGap += 32;
draw_text(lIndent,vInfo, string_hash_to_newline("Bomb:"));draw_sprite(spr_darkWarrior_item,0,144,vInfo);
draw_text(lIndent,vInfo + vGap * 1, string_hash_to_newline("Power:"));draw_sprite(spr_darkWarrior_item,1,144,vInfo + vGap * 1);
draw_text(lIndent,vInfo + vGap * 2, string_hash_to_newline("Speed:"));draw_sprite(spr_darkWarrior_item,2,144,vInfo + vGap * 2);
draw_text(lIndent,vInfo + vGap * 3, string_hash_to_newline("Wall:"));draw_sprite(spr_darkWarrior_item,3,144,vInfo + vGap * 3);
draw_text(lIndent,vInfo + vGap * 4, string_hash_to_newline("Invincible:"));draw_sprite(spr_darkWarrior_item,4,144,vInfo + vGap * 4);

draw_set_halign(fa_center);
if instance_exists(obj_darkWarrior_combat)
{
    draw_text(96, vInfo + 32, string_hash_to_newline(string(obj_darkWarrior_combat.bombCount)));
    draw_text(96, vInfo + vGap * 1 + 32, string_hash_to_newline(string(obj_darkWarrior_combat.powerCount)));
    draw_text(96, vInfo + vGap * 2 + 32, string_hash_to_newline(string(obj_darkWarrior_combat.spd)));
    if(obj_darkWarrior_combat.crossWall)
    {
        draw_text(96, vInfo + vGap * 3 + 32, string_hash_to_newline("Ignore"));
    }
    else
    {
        draw_text(96, vInfo + vGap * 3 + 32, string_hash_to_newline("Blocked"));
    }
    
    draw_text(96, vInfo + vGap * 4 + 32, string_hash_to_newline(string(obj_darkWarrior_combat.godtime / 50) + " secs"));
}
if(player_is_alive())
{
    draw_sprite_ext(spr_smallHeart, 0, player.x - 16, player.y - 32, .75, .75, 0, c_white, 1);
    draw_set_font(fontBasicInfoMini);
    draw_set_color(c_black);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_text(player.x - 2, player.y - 32, string_hash_to_newline("x " + string(global.hp)));
}



draw_reset();

