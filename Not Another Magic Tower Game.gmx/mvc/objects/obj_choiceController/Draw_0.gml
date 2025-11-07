if(sprite_exists(pauseImg) && draw)
{
    __view_set( e__VW.YView, 1, 0 );
    draw_sprite(pauseImg, 0, __view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ));
    
    //dHeight = RangeClamp(view_yview[0] + view_hview[0] - sprite_get_height(spr_dialogbox), view_yview[0] + window_get_region_height() - sprite_get_height(spr_dialogbox),1000000);
    dHeight = RangeClamp(__view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - sprite_get_height(spr_dialogbox), __view_get( e__VW.YView, 0 ) - sprite_get_height(spr_dialogbox),1000000);
    
    draw_set_color(c_silver); 
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    
    draw_sprite(spr_dialogbox, floor(round(global.msec[global.savenum]) / 50), __view_get( e__VW.XView, 0 ), dHeight);
    draw_set_font(fontBasicInfo);
    
    xx = 32;
    yy = dHeight + 32;
    draw_text(xx, yy, string_hash_to_newline(question));
    yy += 32;
    draw_arrow(xx, yy + ind * 32 , xx + 16, yy + ind * 32, 20);
    for(i=0;i<choiceCount;i+=1)
    {
        draw_text(32 + 32, yy, string_hash_to_newline(choice[i]));
        yy += 32;
    }
    
    
    
    draw_reset();
}

