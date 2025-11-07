if(!dialog || type == 1) exit;
//Draw the pause sprite
draw_sprite(pauseImg, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));

//draw_set_color(c_red);
//draw_text(32,32,"ind:" + string(ind) + ",type:" + string(type) + ",subInd:" + string(subInd));

if(dialog)
{
    offsetLeft = 32;
    if(type = -1)
        dialogTitle = "Choose the deal type";
    else if(type == 0)
        dialogTitle = "Choose the avoidance to skip";
    
    //dHeight = RangeClamp(view_yview[0] + view_hview[0] - sprite_get_height(spr_dialogbox), view_yview[0] + window_get_region_height() - sprite_get_height(spr_dialogbox),1000000);
    dHeight = RangeClamp(__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - sprite_get_height(spr_dialogbox), __view_get( e__VW.YView, 0 ) - sprite_get_height(spr_dialogbox),1000000);
    draw_set_color(make_color_rgb(62,66,168)); 
    draw_set_alpha(0.5);
    draw_set_font(fontBasicInfo);
    draw_roundrect(__view_get( e__VW.XView, 0 ),
        dHeight - 32,
        __view_get( e__VW.XView, 0 ) + string_width(string_hash_to_newline(dialogTitle)) + 16,
        dHeight,
        false);
    draw_set_color(c_silver); 
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    
    draw_roundrect(__view_get( e__VW.XView, 0 ),
        dHeight - 32,
        __view_get( e__VW.XView, 0 ) + string_width(string_hash_to_newline(dialogTitle)) + 16,
        dHeight,
        true);
    draw_text(__view_get( e__VW.XView, 0 ) + 8, dHeight - 16, string_hash_to_newline(dialogTitle));
    
    draw_sprite(spr_dialogbox, floor(round(global.msec[global.savenum]) / 50), __view_get( e__VW.XView, 0 ), dHeight);
    
    draw_set_font(fontDirtyDeal);
    draw_set_color(c_silver);
    
    if(type == -1)
    {
        xx = (ind mod 2) * 400;
        yy = dHeight + floor(ind/2)*32;
        draw_arrow(xx + 32, yy + 32 , xx +  48, yy + 32, 20);
        draw_text(32 + 32, dHeight + 32, string_hash_to_newline("Skip Avoidances"));
        draw_text(432 + 32, dHeight + 32, string_hash_to_newline("Wanna Exp(1HP = 5EXP)"));
        draw_text(32 + 32, dHeight + 64, string_hash_to_newline("Wanna Atk(400HP = 1Atk)"));
        draw_text(432 + 32, dHeight + 64, string_hash_to_newline("Wanna Def(150HP = 2Def)"));
        draw_text(32 + 32, dHeight + 96, string_hash_to_newline("Wanna Dynamite"));
        draw_text(432 + 32, dHeight + 96, string_hash_to_newline("Exit"));
        //draw_set_color(c_gray);
        //draw_text(32 + 32, dHeight + 96, "Wanna Dynamites(Coming Soon)");
    }
    else if(type == 0)
    {
        xx = (subInd mod 2) * 400;
        yy = dHeight + floor(subInd/2)*32;
        draw_arrow(xx + 32, yy + 32 , xx +  48, yy + 32, 20);
        for(i=0;i<5;i+=1)
        {
            if(mLock[i] || mCleared[i])
            {
                draw_set_color(merge_color(c_silver,c_gray,0.5));
            }
            else
            {
                draw_set_color(c_silver);
            }
            xx = (i mod 2) * 400;
            yy = dHeight + 32 + floor(i/2)*32;
            draw_text(xx + 64, yy, string_hash_to_newline(monsterName[i] + monsterSuffix[i]));
        }
        draw_set_color(c_silver);
        draw_text(400 + 64, dHeight + 96, string_hash_to_newline("Back"));
    }
}

draw_reset();

