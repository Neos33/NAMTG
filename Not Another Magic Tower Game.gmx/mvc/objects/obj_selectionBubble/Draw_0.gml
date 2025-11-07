if(ind >=0)
{
    draw_sprite_ext(spr_bubbleStagesInfo, ind, x,y,1,1,0,c_white,1);
}
else
{
    draw_sprite_ext(spr_bubbleStagesInfo, 10, x,y,1,1,0,c_white,1);
}
draw_current();
draw_set_font(fontBasicInfo);
draw_set_color(c_white);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

if(ind >=0)
{
    draw_text(x, y - 60, string_hash_to_newline("Stage " + string(ind + 1)));
    for(i = 0; i < 3; i += 1)
    {
        if(i < global.bubbleStageStar[ind])
        {
            draw_sprite_ext(spr_starForStas, 0, x - 50 + 35 * i, y - 100, 0.3,0.3,0,c_white,1);
        }
        else
        {
            draw_sprite_ext(spr_starForStas, 1, x - 50 + 35 * i, y - 100, 0.3,0.3,0,c_white,1);
        }
    }
}
else
{
    draw_text(x, y - 60, string_hash_to_newline("Bonus Stage"));
}

