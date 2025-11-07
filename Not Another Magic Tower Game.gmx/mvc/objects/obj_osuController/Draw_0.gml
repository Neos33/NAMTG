if(start && player_is_alive())
{
    //draw_set_color(c_red);
    //draw_set_alpha(1);
    draw_sprite(spr_osuStandardHPBG, 0, 16,32);
    //draw_sprite_ext(spr_osuStandardHPBar, floor(time / 5) mod 4, 16, 32, hp / 100, 1, 0, c_white, alpha);
    draw_sprite_part_ext(spr_osuStandardHPBar, floor(time / 5) mod 4, 0, 0, 646*hp/100,13, 16, 32, 1, 1, c_white, alpha);
    //draw_roundrect(32,32, 32 + 600 * hp / 100, 48,false);
    if(mode == 1)
    {
        
    }
    //draw_sprite_part_ext(spr_osuStandardHPBar, floor(time / 5) mod 4, 0, 0, 646*hp/100,13, 16, 32, hp / 100, 1, c_white, alpha);
}

/*
if(!instance_exists(obj_combatController))
{
    draw_set_halign(fa_right);
    draw_set_font(font12);
    draw_set_color(c_silver);
    draw_set_alpha(1);
    if(faroDead)
    {
        draw_text(view_xview[0] + view_wview[0] - 64, view_yview[0] + 64, "");
    }
    else
    {
        draw_text(view_xview[0] + view_wview[0] - 64, view_yview[0] + 64, "Faro!!!");
    }
    
    
    draw_set_halign(fa_left)
    draw_text(view_xview[0] +64, view_yview[0] + 64, "Kid");
    
    if(instance_exists(player))
    {
        if(global.hp < 233 && !numOnly)
        {
            for(k = 0; k < floor(global.hp / 100); k+=1)
            {
                draw_sprite_ext(spr_hp, 0, view_xview[0] +64 + 24 * k, view_yview[0] + 80, .75, .75, 0, c_white, 1);
            }
            
            for(j = 0; j < floor((global.hp mod 100) / 10); j+=1)
            {
                draw_sprite(spr_heart10, 0, view_xview[0] +64 + floor(global.hp / 100) * 24 + 20 * j, view_yview[0] + 92);
            }
            
            for(i = 0; i < (global.hp mod 10); i+= 1)
            {
                draw_sprite(spr_smallHeart, 0, view_xview[0] +64 + floor(global.hp / 100) * 24 + 20 * floor((global.hp mod 100) / 10) + 14 * i, view_yview[0] + 98);
            }
        }
        else
        {
            draw_sprite_ext(spr_smallHeart, 0, view_xview[0] +64, view_yview[0] + 92, .75, .75, 0, c_white, 1);
            draw_set_font(fontBasicInfoMini);
            draw_set_color(c_silver);
            draw_set_halign(fa_left);
            draw_set_valign(fa_middle);
            draw_text(view_xview[0] +78, view_yview[0] + 92, "x " + string(global.hp));
        }
    }
    

        
    if(!faroDead)
    {
        draw_sprite(spr_smallHeart, 0, view_xview[0] + view_wview[0] - 64  - 14, view_yview[0] + 98);
    }


}

/* */
/*  */
