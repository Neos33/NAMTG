if(frozen)
{
    draw_current();
}
else
{
    draw_current();
}

if(obj_demonLead_combat.finalStart)
{
    var usedHp;
    if(global.GalleryBossFight)
    {
        usedHp = global.GalleryBossFightHp;
    }
    else
    {
        usedHp = global.hp;
    }
    
    draw_sprite(spr_smallHeart, 0, x - 24, y - 32);
    draw_set_alpha(1);
    draw_set_font(fontBasicInfoMini);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_text(x - 8, y - 40, string_hash_to_newline("x " + string(usedHp)));
    
    if(!global.GalleryBossFight && global.MagicCloak && global.MagicHP > 0)
    {
        draw_sprite(spr_magicShield,0,player.x-24,player.y-48);
        draw_text(x - 8, y - 56, string_hash_to_newline("x " + string(global.MagicHP)));
    }
}


