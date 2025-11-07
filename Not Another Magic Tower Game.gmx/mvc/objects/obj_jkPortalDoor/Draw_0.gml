draw_current();
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_font(fontBasicInfoMini);
draw_set_alpha(1);
if(ind > 0)
{
    draw_text(x, y - 45, string_hash_to_newline("Stage " + string(ind)));
    for(var i = 0; i < 3; i+=1)
    {
        if(i < global.ExtraJkStar[ind - 1])
        {
            draw_sprite_ext(sprStarButton, 1, x + (i - 1) * 16, y - 40,1,1,0,c_white,1);
            draw_sprite_ext(spr_extraStarEffect, 0, x + (i - 1) * 16, y - 40,0.3,0.3,ang,c_white,1);
        }
        else
        {
            draw_sprite_ext(sprStarButton, 0, x + (i - 1) * 16, y - 40,1,1,0,c_white,1);
        }
    }
}
else
{
    draw_text(x, y - 45, string_hash_to_newline("Stage Bonus"));
}



draw_reset_align();

