draw_set_halign(fa_right);
draw_set_font(font12);
draw_set_color(c_gray);
draw_set_alpha(1);

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

if(usedHp < 233)
{
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
}
else
{
    draw_sprite_ext(spr_smallHeart, 0, __view_get( e__VW.XView, 0 ) +64, __view_get( e__VW.YView, 0 ) + 92, .75, .75, 0, c_white, 1);
    draw_set_font(fontBasicInfoMini);
    draw_set_color(c_gray);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_text(__view_get( e__VW.XView, 0 ) +78, __view_get( e__VW.YView, 0 ) + 92, string_hash_to_newline("x " + string(usedHp)));
}

if(timeline_position <= 2008)
{
    draw_sprite_ext(spr_expBar, 0, 64, 28, 672 / 420, 0.5, 0, c_white,1);
    draw_sprite_part_ext(spr_expBar,1, 0,0, timeline_position * 420 / 2008, 37, 64, 28, 672 / 420, 0.5, c_white, 1);
}



draw_reset();

