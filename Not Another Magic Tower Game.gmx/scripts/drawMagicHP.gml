if(!global.inGallery && !global.GalleryBossFight && global.MagicCloak && global.MagicHP > 0)
{                  
    draw_set_font(fontBasicInfoMini);
    draw_set_color(c_silver);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    
    if(global.reverse == 0)
    {
        draw_sprite(spr_magicShield, 0, view_xview[0] + 64 + 4, view_yview[0] + 112);
        draw_text(view_xview[0] + 80 + 2, view_yview[0] + 112, "x " + string(global.MagicHP));    
    }
    else
    {
        draw_sprite_ext(spr_magicShield, 0, view_wview[0] - 64 - 4, view_hview[0] - 112, -1, -1, 0, c_white, 1);
        draw_text_transformed(view_wview[0] - 80 - 2, view_hview[0] - 112, "x " + string(global.MagicHP), -1, -1, 0);
    }
    
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}
